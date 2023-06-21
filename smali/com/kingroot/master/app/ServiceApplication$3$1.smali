.class public Lcom/kingroot/master/app/ServiceApplication$3$1;
.super Lcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bld$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingroot/kinguser/bld$3;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bld$3;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/kingroot/master/app/ServiceApplication$3$1;->this$1:Lcom/kingroot/kinguser/bld$3;

    invoke-direct {p0}, Lcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitcherClosed()V
    .locals 0

    .prologue
    .line 340
    return-void
.end method

.method public onSwitcherOpen(I)V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 312
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->DE()I

    move-result v0

    .line 314
    if-nez p1, :cond_3

    .line 315
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/aks;->eu(I)V

    .line 316
    if-eq v0, v2, :cond_0

    if-ne v0, v3, :cond_1

    .line 317
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070053

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    .line 319
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->et(I)V

    .line 334
    :cond_2
    :goto_0
    return-void

    .line 322
    :cond_3
    if-eq v0, v2, :cond_4

    if-ne v0, v3, :cond_5

    .line 323
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070052

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    .line 326
    :cond_5
    if-ne v0, v3, :cond_2

    .line 327
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/aks;->et(I)V

    goto :goto_0
.end method
