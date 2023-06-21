.class Lcom/kingroot/kinguser/cff$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cck;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cay:Lcom/kingroot/kinguser/cff;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cff;)V
    .locals 0

    .prologue
    .line 863
    iput-object p1, p0, Lcom/kingroot/kinguser/cff$4;->cay:Lcom/kingroot/kinguser/cff;

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

    .line 867
    if-nez p5, :cond_0

    .line 876
    :goto_0
    return-object v0

    .line 872
    :cond_0
    packed-switch p4, :pswitch_data_0

    goto :goto_0

    .line 874
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$4;->cay:Lcom/kingroot/kinguser/cff;

    check-cast p5, Lcom/kingroot/kinguser/ao;

    invoke-static {v0, p2, p3, p1, p5}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;JILcom/kingroot/kinguser/ao;)Lcom/kingroot/kinguser/cfp;

    move-result-object v0

    goto :goto_0

    .line 872
    nop

    :pswitch_data_0
    .packed-switch 0x27ab
        :pswitch_0
    .end packed-switch
.end method
