.class public final Lcom/kingroot/kinguser/common/RootPowerInspectUtil$1;
.super Lcom/kingroot/kinguser/common/check/ISuCheckListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aix;->aQ(Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/kingroot/kinguser/common/check/ISuCheckListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuCheckEvent(I)V
    .locals 1

    .prologue
    .line 372
    if-nez p1, :cond_0

    .line 374
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yw()Lcom/kingroot/kinguser/aiv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aiv;->yD()V

    .line 376
    invoke-static {}, Lcom/kingroot/kinguser/ain;->xW()Lcom/kingroot/kinguser/ain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ain;->xX()V

    .line 381
    :cond_0
    return-void
.end method
