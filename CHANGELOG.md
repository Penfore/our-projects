# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Planned
- Complete board functionality (drag & drop cards between lists)
- Real-time updates with Turbo Streams
- Card assignment system with user mentions
- Due dates and scheduling functionality
- Project statistics dashboard
- Notification system for project updates
- Mobile-responsive design improvements
- Dark/light theme toggle
- Export/import functionality
- Advanced search and filtering

## [0.0.1] - 2025-09-24

### Added
- 🏗️ **Initial Rails 8 Setup** - Modern Rails foundation with latest conventions
- 👥 **User Authentication** - Basic authentication system with Devise
- 📊 **Core Models** - Project, List, Card, and ProjectMembership models with relationships
- 🎨 **Basic UI Structure** - Initial views and styling with TailwindCSS
- 🔧 **Database Schema** - SQLite setup with necessary migrations
- 📝 **Documentation** - README, CONTRIBUTING, and SECURITY guidelines
- 🧪 **Testing Framework** - RSpec setup with FactoryBot

### Changed
- 🔄 **Database Migration**: Switched from PostgreSQL to SQLite for simplified development setup
- 📝 **Documentation Updates**: Updated installation and contribution guides

### Technical Details
- Project structure following Rails 8 conventions
- SQLite database for development simplicity
- Modular MVC architecture
- Basic authentication and authorization framework
- Responsive design foundation with TailwindCSS

### Known Limitations
- ⚠️ **Experimental Status**: This is a development version not ready for production
- ❌ **Limited Functionality**: Core board features are not yet implemented
- ❌ **No Real-time Updates**: Turbo Streams not yet integrated
- ❌ **Basic UI**: Many features exist only as placeholders

---

## Format Guidelines

### Types of Changes
- **Added** for new features
- **Changed** for changes in existing functionality
- **Deprecated** for soon-to-be removed features
- **Removed** for now removed features
- **Fixed** for any bug fixes
- **Security** in case of vulnerabilities

### Version Format
- Follow [Semantic Versioning](https://semver.org/)
- MAJOR.MINOR.PATCH
- MAJOR: Breaking changes
- MINOR: New features (backward compatible)
- PATCH: Bug fixes (backward compatible)
