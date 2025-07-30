# Changelog

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---
## [2024.4.38-bb.2] - 2025-07-30
### Changed

- Fixing `tests/test-values.yaml`
- Updating templates to match
- Removing version from selector labels to fix upgrades

---
## [2024.4.38] - 2025-05-08
### Changed

- Adding the chart for release 2024.4.38

---
## [2024.3.35-bb.1] - 2024-06-28
### Changed

- Adding the chart for release 2024.3.35

---
## [2024.2.77-bb.1] - 2024-06-28
### Changed

- Adding the chart for release 2024.2.77

## [2024.1.45-bb.2] - 2024-07-19
### Changed

- Values and flux deployment fixes to address pipeline issues, no SDE code changes.
- Updated README

## [2024.1.45-bb.1] - 2024-06-28
### Changed

- Upgraded upstream chart to '2021.1.45'
- Updated README

## [2023.4.23-bb.1] - 2024-03-13
### Added

- Added mandatory adjustments required for upgrades due to the introduction of sc-cam service.

### Changed

- Upgraded upstream chart to '2023.4.23'
- Updated README
- Added the updated default deployment strategy to Recreate for Minio.
- Added support for minio-tenant
- Added upgrade notes for SD Elements 2023.4.

## [2023.3.36-bb.1] - 2024-01-11
### Added

- CAM service

### Changed

- Upgraded upstream chart to '2023.3.36'
- Updated README
- Changed default deployment strategy to `RollingUpdate` for Web, JITT, and Workers pods.

## [2023.2.49-bb.1] - 2023-10-19
### Added
- Upgraded upstream chart to '2023.2.49'
- Updating README
- Replaced sc-broker and sc-database with bitnami charts
  - Renamed sc-broker to rabbitmq
  - Renamed sc-database to postgresql
- Introduced trend-reporting job

## [2023.1.54-bb.1] - 2023-05-09
### Added
- Upgraded upstream chart to '2023.1.54'
- Updating README
- Removed ReadWriteMany volumes

## [2022.4.33-bb.1] - 2023-03-21
### Added
- Upgraded upstream chart to 2022.4.33
- Updated README
- Now supports networkpolicies and istio virtual gateway

## [2022.2.71-bb.1] - 2022-11-04
### Added
- Upgraded upstream chart to 2022.2.71

## [2022.2.68-bb.1] - 2022-10-19
### Added
- Upgraded upstream chart to 2022.2.68
- Updated README

## [5.19.19-bb.1] - 2022-05-13
### Added
- Add BB version
- Fixed Web deployments argument

## [5.19.19] - 2022-05-10
### Added
- Initial upstream version
