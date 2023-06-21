.class public final Lcom/kingroot/loader/common/KlConst$PluginLaunchResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/loader/common/KlConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PluginLaunchResult"
.end annotation


# static fields
.field public static final LAUNCH_FAILED_ALREADY_LAUNCHED:I = -0x3

.field public static final LAUNCH_FAILED_NO_LOADED_APPLICATION:I = -0x2

.field public static final LAUNCH_FAILED_PLUGIN_INTERNAL:I = -0x4

.field public static final LAUNCH_FAILED_UNKNOWN_INTERNAL:I = -0x1

.field public static final LAUNCH_SUCCESS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
