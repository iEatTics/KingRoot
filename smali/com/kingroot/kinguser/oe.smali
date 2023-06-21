.class Lcom/kingroot/kinguser/oe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cck;


# instance fields
.field final synthetic val$listener:Lcom/kingroot/kinguser/cat;

.field final synthetic xX:Lcom/kingroot/kinguser/od;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/od;Lcom/kingroot/kinguser/cat;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/kingroot/kinguser/oe;->xX:Lcom/kingroot/kinguser/od;

    iput-object p2, p0, Lcom/kingroot/kinguser/oe;->val$listener:Lcom/kingroot/kinguser/cat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJILcom/qq/taf/jce/JceStruct;)Lcom/kingroot/kinguser/cfp;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Lcom/qq/taf/jce/JceStruct;",
            ")",
            "Lcom/kingroot/kinguser/cfp",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Lcom/qq/taf/jce/JceStruct;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    if-nez p5, :cond_1

    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/oe;->val$listener:Lcom/kingroot/kinguser/cat;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/oe;->val$listener:Lcom/kingroot/kinguser/cat;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v2, p4

    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/cat;->a(IIIILcom/qq/taf/jce/JceStruct;)V

    .line 73
    :cond_0
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/oe;->val$listener:Lcom/kingroot/kinguser/cat;

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/oe;->val$listener:Lcom/kingroot/kinguser/cat;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v1, p1

    move v2, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/cat;->a(IIIILcom/qq/taf/jce/JceStruct;)V

    .line 79
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
