.class public abstract Lcom/kingroot/loader/sdk/KlInfo$KlInfoEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/loader/sdk/KlInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "KlInfoEntry"
.end annotation


# static fields
.field public static final COLUMN_BACK_ENTRY_CLASS:Ljava/lang/String; = "xc"

.field public static final COLUMN_FORE_ENTRY_CLASS:Ljava/lang/String; = "xd"

.field public static final COLUMN_PACKAGE_MD5:Ljava/lang/String; = "xe"

.field public static final COLUMN_PKG_NAME:Ljava/lang/String; = "xa"

.field public static final COLUMN_PLUGIN_BUILD_HOST_ID:Ljava/lang/String; = "xj"

.field public static final COLUMN_PLUGIN_BUILD_HOST_VERSION:Ljava/lang/String; = "xk"

.field public static final COLUMN_PLUGIN_ID:Ljava/lang/String; = "xl"

.field public static final COLUMN_PLUGIN_INSTALL_STATE:Ljava/lang/String; = "xg"

.field public static final COLUMN_PLUGIN_VERSION_NAME:Ljava/lang/String; = "xi"

.field public static final COLUMN_RAW_PLUGIN_PATH:Ljava/lang/String; = "xf"

.field public static final COLUMN_VER_CODE:Ljava/lang/String; = "xb"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
