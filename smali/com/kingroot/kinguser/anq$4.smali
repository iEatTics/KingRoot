.class Lcom/kingroot/kinguser/anq$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/alg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/anq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/anq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anq;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/kingroot/kinguser/anq$4;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public y(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 500
    if-eqz p1, :cond_0

    .line 501
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$4;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->m(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/aoi;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/kingroot/kinguser/aoi;->C(Ljava/lang/String;Z)V

    .line 502
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$4;->this$0:Lcom/kingroot/kinguser/anq;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/kingroot/kinguser/anq;->B(Ljava/lang/String;Z)V

    .line 505
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188f0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 507
    :cond_0
    return-void
.end method
