# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Planned
- Real-time updates with Turbo Streams
- Drag and drop functionality with SortableJS
- Card assignment system
- Due dates and scheduling
- Project statistics dashboard
- Notification system
- Mobile-responsive design improvements
- Dark/light theme toggle
- Export/import functionality

## [0.1.0] - 2025-09-17

### Added
- 🏗️ Modern Rails 8 foundation with latest conventions
- 👥 User authentication system with Devise
- 📊 Project management core models (Project, List, Card, ProjectMembership)
- 🔒 Authorization system with Pundit policies
- 🎨 TailwindCSS integration for modern UI
- ⚡ Hotwire (Turbo + Stimulus) setup for real-time interactivity
- 📦 Acts_as_list for card and list ordering
- 🧪 RSpec testing framework with FactoryBot
- 🐳 Docker and Kamal deployment configuration
- 📚 Comprehensive documentation (README, CONTRIBUTING, SECURITY)
- 🔧 Development tools (RuboCop, Rails Best Practices)

### Technical Details
- Rails 8.0+ with PostgreSQL database
- ViewComponent integration for reusable UI components
- Solid Queue, Solid Cache, and Solid Cable for background processing
- Modern JavaScript bundling with esbuild
- Test-driven development approach
- Clean architecture following Rails conventions

### Database Schema
- Users table with Devise authentication
- Projects with ownership and team collaboration
- Lists as board columns with positioning
- Cards as tasks within lists
- ProjectMemberships for team management

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
