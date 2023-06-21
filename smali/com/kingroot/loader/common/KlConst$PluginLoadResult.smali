.class public final Lcom/kingroot/loader/common/KlConst$PluginLoadResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/loader/common/KlConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PluginLoadResult"
.end annotation


# static fields
.field public static final LOAD_FAILED_ALREADY_LOADED:I = -0x7

.field public static final LOAD_FAILED_CREATE_CLASS_LOADER_ERR:I = -0x2

.field public static final LOAD_FAILED_CREATE_CONTEXT_ERR:I = -0x3

.field public static final LOAD_FAILED_EMPTY_BACK_ENTRY:I = -0x8

.field public static final LOAD_FAILED_EMPTY_FORE_ENTRY:I = -0x9

.field public static final LOAD_FAILED_INITIALIZE_APPLICATION_ERR:I = -0x5

.field public static final LOAD_FAILED_INSTANTIATE_APPLICATION_ERR:I = -0x4

.field public static final LOAD_FAILED_PLUGIN_DISABLED:I = -0x6

.field public static final LOAD_FAILED_PLUGIN_ISN_INSTALLED:I = -0x1

.field public static final LOAD_SUCCEED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
