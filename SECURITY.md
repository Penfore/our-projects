# Security Policy

## Supported Versions

We currently support the following versions with security updates:

| Version | Supported          |
| ------- | ------------------ |
| 0.1.x   | :white_check_mark: |
| < 0.1   | :x:                |

**Note**: As this project is in early development (v0.1.0), we recommend using only the latest released version.

## Reporting a Vulnerability

While Our Projects is primarily a project management application, we understand our responsibility as an open source project to address security concerns when they arise.

### How to Report

**Please do not report security vulnerabilities through public GitHub issues.**

Instead, please report them via email to: fulvioleo.dev@pm.me

Please include the following information in your report:
- Type of issue (SQL injection, XSS, authentication bypass, etc.)
- Full paths of source file(s) related to the manifestation of the issue
- The location of the affected source code (tag/branch/commit or direct URL)
- Any special configuration required to reproduce the issue
- Step-by-step instructions to reproduce the issue
- Proof-of-concept or exploit code (if possible)
- Impact of the issue, including how an attacker might exploit the issue

### What to Expect

- We will review and respond to vulnerability reports on a best-effort basis
- We will work with you to understand and validate the vulnerability when possible
- We will credit you in our security advisory (unless you prefer to remain anonymous)

### Security Update Process

When security issues are confirmed, we will:
1. Assess the severity and impact of the vulnerability
2. Develop and test appropriate fixes
3. Release updates as feasible
4. Publish security advisories when appropriate

## Security Considerations

### Data Protection

- User passwords are encrypted using industry-standard methods (Devise + bcrypt)
- Session data is handled securely following Rails conventions
- Database credentials and sensitive configuration are stored in environment variables
- All user input is validated and sanitized

### Authentication & Authorization

- User authentication is handled by Devise (industry-standard Rails gem)
- Authorization is managed through Pundit policies
- Session management follows Rails security best practices
- CSRF protection is enabled by default

### Infrastructure Security

- PostgreSQL database with proper access controls
- Environment variables for sensitive configuration
- Regular dependency updates through Dependabot (when configured)
- Docker containers for consistent deployment environments

### Development Security

- Dependencies are regularly audited for known vulnerabilities
- Code follows secure coding practices
- Test coverage includes security-related scenarios
- Regular security reviews of critical functionality

## Preferred Languages

We prefer all communications to be in English or Portuguese.

## Safe Harbor

We support safe harbor for security researchers who:
- Make a good faith effort to avoid privacy violations, destruction of data, and interruption or degradation of our services
- Only interact with accounts you own or with explicit permission of the account holder
- Do not access, modify, or store user data without permission
- Contact us immediately if you inadvertently encounter user data

## Security Best Practices for Contributors

When contributing to this project, please:

- **Never commit sensitive data** (passwords, API keys, personal information)
- **Use parameterized queries** to prevent SQL injection
- **Validate and sanitize all user input**
- **Follow Rails security guidelines** for authentication and authorization
- **Keep dependencies up to date** and check for security advisories
- **Use HTTPS** for all external communications
- **Review code changes** for potential security implications

## Known Security Limitations

As an early-stage project (v0.1.0), please be aware:

- This is a development version not intended for production use with sensitive data
- Security features are still being implemented and refined
- Regular security audits have not yet been performed
- Some advanced security features may not be implemented

## Reporting Non-Security Issues

For general bugs and issues that are not security-related, please use our [GitHub Issues](https://github.com/Penfore/our_projects/issues) page.

Thank you for helping keep Our Projects and our users safe!
