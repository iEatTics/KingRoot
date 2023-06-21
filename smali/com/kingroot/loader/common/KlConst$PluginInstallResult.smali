.class public final Lcom/kingroot/loader/common/KlConst$PluginInstallResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/loader/common/KlConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PluginInstallResult"
.end annotation


# static fields
.field public static final INSTALL_FAILED_ALREADY_EXISTS:I = -0x1

.field public static final INSTALL_FAILED_COPY_APK:I = -0x9

.field public static final INSTALL_FAILED_CRATE_PKG_OBJ:I = -0x16

.field public static final INSTALL_FAILED_EXTRACT_PLUGIN:I = -0xf

.field public static final INSTALL_FAILED_EXTRACT_SO:I = -0xa

.field public static final INSTALL_FAILED_GET_APK_MD5:I = -0x10

.field public static final INSTALL_FAILED_INVALID_APK:I = -0x2

.field public static final INSTALL_FAILED_INVALID_URI:I = -0x8

.field public static final INSTALL_FAILED_NEWER_SDK:I = -0x4

.field public static final INSTALL_FAILED_OLDER_PLUGIN:I = -0xe

.field public static final INSTALL_FAILED_OLDER_SDK:I = -0x3

.field public static final INSTALL_FAILED_PLUGIN_CL_ISN_RECYCLED:I = -0x11

.field public static final INSTALL_FAILED_PLUGIN_ENTRY_CLASS_NOT_FOUND:I = -0x14

.field public static final INSTALL_FAILED_PLUGIN_IS_RUNNING_POSSIBLY:I = -0xd

.field public static final INSTALL_FAILED_PLUGIN_NO_ENTRY:I = -0x15

.field public static final INSTALL_FAILED_PLUGIN_UNSUPPORTED:I = -0x13

.field public static final INSTALL_FAILED_UNKNOWN_INTERNAL:I = -0xc

.field public static final INSTALL_FAILED_VERSION_DOWNGRADE:I = -0x5

.field public static final INSTALL_PARSE_FAILED_BAD_MANIFEST:I = -0x7

.field public static final INSTALL_PARSE_FAILED_NOT_APK:I = -0x6

.field public static final INSTALL_PARSE_FAILED_NOT_SOURCE_APK:I = -0xb

.field public static final INSTALL_SUCCEEDED:I = 0x1

.field public static final INSTALL_TRANSFER_MERI_PI_TO_KLINFO:I = -0x12


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
