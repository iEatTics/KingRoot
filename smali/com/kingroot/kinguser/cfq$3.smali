.class Lcom/kingroot/kinguser/cfq$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cck;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cfq;->c(Lcom/kingroot/kinguser/cff$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cdx:Lcom/kingroot/kinguser/cfq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cfq;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/kingroot/kinguser/cfq$3;->cdx:Lcom/kingroot/kinguser/cfq;

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

    .line 214
    if-nez p5, :cond_0

    .line 223
    :goto_0
    return-object v0

    .line 219
    :cond_0
    packed-switch p4, :pswitch_data_0

    goto :goto_0

    .line 221
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfq$3;->cdx:Lcom/kingroot/kinguser/cfq;

    check-cast p5, Lcom/kingroot/kinguser/bb;

    invoke-static {v0, p2, p3, p1, p5}, Lcom/kingroot/kinguser/cfq;->a(Lcom/kingroot/kinguser/cfq;JILcom/kingroot/kinguser/bb;)Lcom/kingroot/kinguser/cfp;

    move-result-object v0

    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x3aac
        :pswitch_0
    .end packed-switch
.end method
