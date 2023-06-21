.class public final Lcom/kingroot/loader/common/KlConst$PluginState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/loader/common/KlConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PluginState"
.end annotation


# static fields
.field public static final INSTALLED:I = 0x1

.field public static final INVALID:I = 0x0

.field public static final INVALID_KEEP_DATA:I = 0x3

.field public static final NOT_INSTALLED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
