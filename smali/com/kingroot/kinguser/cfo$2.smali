.class Lcom/kingroot/kinguser/cfo$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cck;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cfo;->b(Lcom/kingroot/kinguser/cff$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cdp:Lcom/kingroot/kinguser/cfo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cfo;)V
    .locals 0

    .prologue
    .line 682
    iput-object p1, p0, Lcom/kingroot/kinguser/cfo$2;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJILcom/qq/taf/jce/JceStruct;)Lcom/kingroot/kinguser/cfp;
    .locals 2
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
    const/4 v0, 0x0

    .line 686
    if-nez p5, :cond_0

    .line 696
    :goto_0
    return-object v0

    .line 691
    :cond_0
    packed-switch p4, :pswitch_data_0

    goto :goto_0

    .line 693
    :pswitch_0
    check-cast p5, Lcom/kingroot/kinguser/ap;

    .line 694
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo$2;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v0, p2, p3, p5}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;JLcom/kingroot/kinguser/ap;)Lcom/kingroot/kinguser/cfp;

    move-result-object v0

    goto :goto_0

    .line 691
    nop

    :pswitch_data_0
    .packed-switch 0x2b5d
        :pswitch_0
    .end packed-switch
.end method
