.class public Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$OptimizeResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/rr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptimizeResult"
.end annotation


# instance fields
.field public memoryreReleased:I

.field public optimizePercent:I

.field public processCountOptimized:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
