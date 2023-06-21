.class Lcom/kingroot/kinguser/aup$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aup;->PU()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aRM:Lcom/kingroot/kinguser/aup;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aup;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/kingroot/kinguser/aup$1;->aRM:Lcom/kingroot/kinguser/aup;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 56
    invoke-static {}, Lcom/kingroot/kinguser/alx;->HB()Lcom/kingroot/kinguser/alx;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aup$1;->aRM:Lcom/kingroot/kinguser/aup;

    invoke-static {v1}, Lcom/kingroot/kinguser/aup;->a(Lcom/kingroot/kinguser/aup;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/alx;->fj(I)Ljava/util/List;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/kingroot/kinguser/aup$1;->aRM:Lcom/kingroot/kinguser/aup;

    invoke-static {v1}, Lcom/kingroot/kinguser/aup;->b(Lcom/kingroot/kinguser/aup;)Lcom/kingroot/kinguser/anp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/anp;->aH(Ljava/util/List;)V

    .line 59
    return-void
.end method
