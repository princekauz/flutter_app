import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Edit profile coming soon')),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Profile header
            Card(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 55,
                          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                          child: Icon(
                            Icons.person_rounded,
                            size: 55,
                            color: Theme.of(context).colorScheme.onPrimaryContainer,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Theme.of(context).colorScheme.surface,
                                width: 3,
                              ),
                            ),
                            child: Icon(
                              Icons.camera_alt,
                              size: 18,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'John Doe',
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'john.doe@example.com',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).textTheme.bodyLarge?.color?.withOpacity(0.7),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondaryContainer,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'Premium Member',
                        style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSecondaryContainer,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Stats row
            Row(
              children: [
                _buildStatCard(context, 'Posts', '128'),
                const SizedBox(width: 12),
                _buildStatCard(context, 'Followers', '1.2K'),
                const SizedBox(width: 12),
                _buildStatCard(context, 'Following', '342'),
              ],
            ),
            const SizedBox(height: 24),

            // Menu options
            Card(
              child: Column(
                children: [
                  _buildMenuItem(
                    context,
                    'Account Settings',
                    'Manage your account preferences',
                    Icons.account_circle_outlined,
                    () => context.push('/settings'),
                  ),
                  _buildDivider(context),
                  _buildMenuItem(
                    context,
                    'Notifications',
                    'Configure notification preferences',
                    Icons.notifications_outlined,
                    () {},
                  ),
                  _buildDivider(context),
                  _buildMenuItem(
                    context,
                    'Privacy & Security',
                    'Manage privacy settings',
                    Icons.security_outlined,
                    () {},
                  ),
                  _buildDivider(context),
                  _buildMenuItem(
                    context,
                    'Language & Region',
                    'English (US) • USD',
                    Icons.language_outlined,
                    () {},
                  ),
                  _buildDivider(context),
                  _buildMenuItem(
                    context,
                    'Payment Methods',
                    'Manage your payment options',
                    Icons.payment_outlined,
                    () {},
                  ),
                  _buildDivider(context),
                  _buildMenuItem(
                    context,
                    'Appearance',
                    'Theme, font size, display options',
                    Icons.palette_outlined,
                    () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Support section
            Card(
              child: Column(
                children: [
                  _buildMenuItem(
                    context,
                    'Help & Support',
                    'FAQs, contact us, feedback',
                    Icons.help_outline,
                    () {},
                  ),
                  _buildDivider(context),
                  _buildMenuItem(
                    context,
                    'Terms of Service',
                    'Read our terms and conditions',
                    Icons.description_outlined,
                    () {},
                  ),
                  _buildDivider(context),
                  _buildMenuItem(
                    context,
                    'Privacy Policy',
                    'How we handle your data',
                    Icons.privacy_tip_outlined,
                    () {},
                  ),
                  _buildDivider(context),
                  _buildMenuItem(
                    context,
                    'Open Source Licenses',
                    'Third-party licenses',
                    Icons.article_outlined,
                    () => _showLicenses(context),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Sign out button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () => _showSignOutDialog(context),
                icon: const Icon(Icons.logout),
                label: const Text('Sign Out'),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Theme.of(context).colorScheme.error,
                  side: BorderSide(color: Theme.of(context).colorScheme.error),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(BuildContext context, String label, String value) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              Text(
                value,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                label,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).textTheme.bodyMedium?.color?.withOpacity(0.7),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(
    BuildContext context,
    String title,
    String subtitle,
    IconData icon,
    VoidCallback onTap,
  ) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }

  Widget _buildDivider(BuildContext context) {
    return Divider(
      height: 1,
      thickness: 1,
      indent: 72,
      endIndent: 16,
      color: Theme.of(context).colorScheme.outlineVariant,
    );
  }

  void _showLicenses(BuildContext context) {
    showLicensePage(
      context: context,
      applicationName: 'Flutter App',
      applicationVersion: '1.0.0',
    );
  }

  void _showSignOutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Sign Out?'),
        content: const Text('Are you sure you want to sign out?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Signed out successfully')),
              );
            },
            child: const Text('Sign Out'),
          ),
        ],
      ),
    );
  }
}