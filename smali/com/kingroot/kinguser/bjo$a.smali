.class final Lcom/kingroot/kinguser/bjo$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bjp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bjo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic bxv:Lcom/kingroot/kinguser/bjo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjo;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lcom/kingroot/kinguser/bjo$a;->bxv:Lcom/kingroot/kinguser/bjo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/kingroot/kinguser/aex$a;)V
    .locals 2

    .prologue
    .line 546
    if-eqz p1, :cond_0

    .line 548
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x186db

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 549
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo$a;->bxv:Lcom/kingroot/kinguser/bjo;

    invoke-static {v0, p2}, Lcom/kingroot/kinguser/bjo;->b(Lcom/kingroot/kinguser/bjo;Lcom/kingroot/kinguser/aex$a;)V

    .line 551
    :cond_0
    return-void
.end method
