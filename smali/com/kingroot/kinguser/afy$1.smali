.class Lcom/kingroot/kinguser/afy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cat;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/afy;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/brj;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ajx:Lcom/kingroot/kinguser/brj;

.field final synthetic ajy:Lcom/kingroot/kinguser/afy;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/afy;Lcom/kingroot/kinguser/brj;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/kingroot/kinguser/afy$1;->ajy:Lcom/kingroot/kinguser/afy;

    iput-object p2, p0, Lcom/kingroot/kinguser/afy$1;->ajx:Lcom/kingroot/kinguser/brj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIILcom/qq/taf/jce/JceStruct;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/afy$1;->ajx:Lcom/kingroot/kinguser/brj;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/kingroot/kinguser/afy$1;->ajx:Lcom/kingroot/kinguser/brj;

    invoke-interface {v0, p3, p5}, Lcom/kingroot/kinguser/brj;->a(ILcom/qq/taf/jce/JceStruct;)V

    .line 39
    :cond_0
    return-void
.end method
