.class Lcom/kingroot/kinguser/ayj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cat;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ayj;->sendShark(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cci;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bcO:Lcom/kingroot/kinguser/cci;

.field final synthetic bcP:Lcom/kingroot/kinguser/ayj;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ayj;Lcom/kingroot/kinguser/cci;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/kingroot/kinguser/ayj$1;->bcP:Lcom/kingroot/kinguser/ayj;

    iput-object p2, p0, Lcom/kingroot/kinguser/ayj$1;->bcO:Lcom/kingroot/kinguser/cci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIILcom/qq/taf/jce/JceStruct;)V
    .locals 6

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/ayj$1;->bcO:Lcom/kingroot/kinguser/cci;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/cci;->a(IIIILcom/qq/taf/jce/JceStruct;)V

    .line 32
    return-void
.end method
