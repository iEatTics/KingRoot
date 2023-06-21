.class public final Lcom/kingroot/loader/common/KlConst$PluginPostUpdateResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/loader/common/KlConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PluginPostUpdateResult"
.end annotation


# static fields
.field public static final POST_FAIL_INVALID_PATH:I = -0x1

.field public static final POST_FAIL_LOWER_VERSION_CODE:I = -0x4

.field public static final POST_FAIL_NOT_INSTALLED:I = -0x3

.field public static final POST_FAIL_PARSE_MANIFEST_FAIL:I = -0x2

.field public static final POST_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
