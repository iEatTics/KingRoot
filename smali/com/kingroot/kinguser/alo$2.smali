.class Lcom/kingroot/kinguser/alo$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/buk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alo;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic axY:Lcom/kingroot/kinguser/alo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alo;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/kingroot/kinguser/alo$2;->axY:Lcom/kingroot/kinguser/alo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/bul;)V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/kingroot/kinguser/awn;->Ta()Lcom/kingroot/kinguser/awn;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/alo$2$1;

    invoke-direct {v1, p0, p4}, Lcom/kingroot/kinguser/alo$2$1;-><init>(Lcom/kingroot/kinguser/alo$2;Lcom/kingroot/kinguser/bul;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/kingroot/kinguser/awn;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cat;)V

    .line 68
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/bvp;Lcom/kingroot/kinguser/buh;)V
    .locals 6

    .prologue
    .line 72
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/alo$2$2;

    invoke-direct {v5, p0, p1, p2}, Lcom/kingroot/kinguser/alo$2$2;-><init>(Lcom/kingroot/kinguser/alo$2;Lcom/kingroot/kinguser/bvp;Lcom/kingroot/kinguser/buh;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 102
    return-void
.end method
