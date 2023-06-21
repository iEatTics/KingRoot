.class Lcom/kingroot/kinguser/alo$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cat;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alo$2;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/bul;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic axZ:Lcom/kingroot/kinguser/bul;

.field final synthetic aya:Lcom/kingroot/kinguser/alo$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alo$2;Lcom/kingroot/kinguser/bul;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/kingroot/kinguser/alo$2$1;->aya:Lcom/kingroot/kinguser/alo$2;

    iput-object p2, p0, Lcom/kingroot/kinguser/alo$2$1;->axZ:Lcom/kingroot/kinguser/bul;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIILcom/qq/taf/jce/JceStruct;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kingroot/kinguser/alo$2$1;->axZ:Lcom/kingroot/kinguser/bul;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/alo$2$1;->axZ:Lcom/kingroot/kinguser/bul;

    invoke-interface {v0, p3, p5}, Lcom/kingroot/kinguser/bul;->a(ILcom/qq/taf/jce/JceStruct;)V

    .line 66
    :cond_0
    return-void
.end method
