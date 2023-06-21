.class public Lcom/kingroot/kinguser/ber$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic blx:Lcom/kingroot/kinguser/ber;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ber;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/kingroot/kinguser/ber$1;->blx:Lcom/kingroot/kinguser/ber;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 46
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 47
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/kingroot/kinguser/tmplate/AntiInjectTemplate$1$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/tmplate/AntiInjectTemplate$1$1;-><init>(Lcom/kingroot/kinguser/ber$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ahl;->a(ZLcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver;)V

    .line 62
    return-void
.end method
