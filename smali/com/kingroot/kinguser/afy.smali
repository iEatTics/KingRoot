.class public Lcom/kingroot/kinguser/afy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/brj;J)V
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Lcom/kingroot/kinguser/awn;->Ta()Lcom/kingroot/kinguser/awn;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/afy$1;

    invoke-direct {v1, p0, p4}, Lcom/kingroot/kinguser/afy$1;-><init>(Lcom/kingroot/kinguser/afy;Lcom/kingroot/kinguser/brj;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/kingroot/kinguser/awn;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cat;)V

    .line 41
    return-void
.end method
