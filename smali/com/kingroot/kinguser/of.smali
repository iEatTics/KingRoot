.class Lcom/kingroot/kinguser/of;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cci;


# instance fields
.field final synthetic val$listener:Lcom/kingroot/kinguser/cat;

.field final synthetic xX:Lcom/kingroot/kinguser/od;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/od;Lcom/kingroot/kinguser/cat;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/kingroot/kinguser/of;->xX:Lcom/kingroot/kinguser/od;

    iput-object p2, p0, Lcom/kingroot/kinguser/of;->val$listener:Lcom/kingroot/kinguser/cat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIILcom/qq/taf/jce/JceStruct;)V
    .locals 6

    .prologue
    .line 92
    iget-object v0, p0, Lcom/kingroot/kinguser/of;->val$listener:Lcom/kingroot/kinguser/cat;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/of;->val$listener:Lcom/kingroot/kinguser/cat;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/cat;->a(IIIILcom/qq/taf/jce/JceStruct;)V

    .line 95
    :cond_0
    return-void
.end method
