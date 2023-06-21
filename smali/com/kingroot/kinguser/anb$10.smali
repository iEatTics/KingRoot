.class Lcom/kingroot/kinguser/anb$10;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anb;->a(ILjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aAd:Lcom/kingroot/kinguser/anb;

.field final synthetic aAn:Ljava/lang/String;

.field final synthetic awy:I

.field final synthetic val$cid:I

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anb;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/kingroot/kinguser/anb$10;->aAd:Lcom/kingroot/kinguser/anb;

    iput p2, p0, Lcom/kingroot/kinguser/anb$10;->awy:I

    iput p3, p0, Lcom/kingroot/kinguser/anb$10;->val$cid:I

    iput-object p4, p0, Lcom/kingroot/kinguser/anb$10;->val$pkg:Ljava/lang/String;

    iput-object p5, p0, Lcom/kingroot/kinguser/anb$10;->aAn:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v1

    .line 165
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    const-string v2, ""

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget v2, p0, Lcom/kingroot/kinguser/anb$10;->awy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget v2, p0, Lcom/kingroot/kinguser/anb$10;->val$cid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v2, p0, Lcom/kingroot/kinguser/anb$10;->val$pkg:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v1, p0, Lcom/kingroot/kinguser/anb$10;->aAn:Ljava/lang/String;

    invoke-static {v1}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x18905

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 180
    return-void
.end method
