.class Lcom/kingroot/kinguser/cez$1;
.super Lcom/kingroot/kinguser/cfa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cez;->a(Lcom/kingroot/kinguser/cez$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ael:I

.field final synthetic bZr:Lcom/kingroot/kinguser/az;

.field final synthetic bZs:Lcom/kingroot/kinguser/cez$a;

.field final synthetic bZt:Lcom/kingroot/kinguser/cez;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cez;Ljava/lang/String;Lcom/kingroot/kinguser/az;Lcom/kingroot/kinguser/cez$a;I)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/kingroot/kinguser/cez$1;->bZt:Lcom/kingroot/kinguser/cez;

    iput-object p3, p0, Lcom/kingroot/kinguser/cez$1;->bZr:Lcom/kingroot/kinguser/az;

    iput-object p4, p0, Lcom/kingroot/kinguser/cez$1;->bZs:Lcom/kingroot/kinguser/cez$a;

    iput p5, p0, Lcom/kingroot/kinguser/cez$1;->ael:I

    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/cfa;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(ZIILjava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bg;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v8, -0x14070d0

    const/4 v7, 0x0

    const v2, -0x1443fd0

    const/16 v6, 0x98

    .line 162
    if-eqz p2, :cond_0

    .line 164
    iget-object v0, p0, Lcom/kingroot/kinguser/cez$1;->bZs:Lcom/kingroot/kinguser/cez$a;

    iget v1, p0, Lcom/kingroot/kinguser/cez$1;->ael:I

    invoke-interface {v0, v1, v6, p2}, Lcom/kingroot/kinguser/cez$a;->l(III)V

    .line 239
    :goto_0
    return-void

    .line 168
    :cond_0
    if-nez p4, :cond_1

    .line 170
    iget-object v0, p0, Lcom/kingroot/kinguser/cez$1;->bZs:Lcom/kingroot/kinguser/cez$a;

    iget v1, p0, Lcom/kingroot/kinguser/cez$1;->ael:I

    invoke-interface {v0, v1, v6, v2}, Lcom/kingroot/kinguser/cez$a;->l(III)V

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/kingroot/kinguser/cez$1;->bZs:Lcom/kingroot/kinguser/cez$a;

    iget v1, p0, Lcom/kingroot/kinguser/cez$1;->ael:I

    invoke-interface {v0, v1, v6, v2}, Lcom/kingroot/kinguser/cez$a;->l(III)V

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {p4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/kingroot/kinguser/bg;

    .line 181
    if-nez v5, :cond_3

    .line 183
    iget-object v0, p0, Lcom/kingroot/kinguser/cez$1;->bZs:Lcom/kingroot/kinguser/cez$a;

    iget v1, p0, Lcom/kingroot/kinguser/cez$1;->ael:I

    invoke-interface {v0, v1, v6, v2}, Lcom/kingroot/kinguser/cez$a;->l(III)V

    goto :goto_0

    .line 187
    :cond_3
    iget v0, v5, Lcom/kingroot/kinguser/bg;->retCode:I

    if-eqz v0, :cond_4

    .line 189
    iget-object v0, p0, Lcom/kingroot/kinguser/cez$1;->bZs:Lcom/kingroot/kinguser/cez$a;

    iget v1, p0, Lcom/kingroot/kinguser/cez$1;->ael:I

    iget v2, v5, Lcom/kingroot/kinguser/bg;->retCode:I

    invoke-interface {v0, v1, v6, v2}, Lcom/kingroot/kinguser/cez$a;->l(III)V

    goto :goto_0

    .line 193
    :cond_4
    iget v0, v5, Lcom/kingroot/kinguser/bg;->jZ:I

    if-eqz v0, :cond_5

    .line 195
    iget-object v0, p0, Lcom/kingroot/kinguser/cez$1;->bZs:Lcom/kingroot/kinguser/cez$a;

    iget v1, p0, Lcom/kingroot/kinguser/cez$1;->ael:I

    const v2, -0x1450320

    invoke-interface {v0, v1, v6, v2}, Lcom/kingroot/kinguser/cez$a;->l(III)V

    goto :goto_0

    .line 199
    :cond_5
    iget-object v0, v5, Lcom/kingroot/kinguser/bg;->data:[B

    if-nez v0, :cond_6

    .line 201
    iget-object v0, p0, Lcom/kingroot/kinguser/cez$1;->bZs:Lcom/kingroot/kinguser/cez$a;

    iget v1, p0, Lcom/kingroot/kinguser/cez$1;->ael:I

    const v2, -0x1406f45

    invoke-interface {v0, v1, v6, v2}, Lcom/kingroot/kinguser/cez$a;->l(III)V

    goto :goto_0

    .line 205
    :cond_6
    new-instance v3, Lcom/kingroot/kinguser/at;

    invoke-direct {v3}, Lcom/kingroot/kinguser/at;-><init>()V

    .line 209
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/cez$1;->bZw:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, v5, Lcom/kingroot/kinguser/bg;->data:[B

    const/4 v4, 0x0

    iget v5, v5, Lcom/kingroot/kinguser/bg;->flag:I

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/ceq;->a(Landroid/content/Context;[B[BLcom/qq/taf/jce/JceStruct;ZI)Lcom/qq/taf/jce/JceStruct;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 216
    if-nez v0, :cond_7

    .line 218
    iget-object v0, p0, Lcom/kingroot/kinguser/cez$1;->bZs:Lcom/kingroot/kinguser/cez$a;

    iget v1, p0, Lcom/kingroot/kinguser/cez$1;->ael:I

    invoke-interface {v0, v1, v6, v8}, Lcom/kingroot/kinguser/cez$a;->l(III)V

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/kingroot/kinguser/cez$1;->bZs:Lcom/kingroot/kinguser/cez$a;

    iget v1, p0, Lcom/kingroot/kinguser/cez$1;->ael:I

    invoke-interface {v0, v1, v6, v8}, Lcom/kingroot/kinguser/cez$a;->l(III)V

    goto :goto_0

    .line 222
    :cond_7
    check-cast v0, Lcom/kingroot/kinguser/at;

    .line 223
    iget-object v1, v0, Lcom/kingroot/kinguser/at;->iv:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 224
    if-eqz v1, :cond_8

    .line 226
    iget-object v0, p0, Lcom/kingroot/kinguser/cez$1;->bZs:Lcom/kingroot/kinguser/cez$a;

    iget v1, p0, Lcom/kingroot/kinguser/cez$1;->ael:I

    const v2, -0x144b500

    invoke-interface {v0, v1, v6, v2}, Lcom/kingroot/kinguser/cez$a;->l(III)V

    goto/16 :goto_0

    .line 235
    :cond_8
    iget-object v1, p0, Lcom/kingroot/kinguser/cez$1;->bZt:Lcom/kingroot/kinguser/cez;

    iget-object v2, p0, Lcom/kingroot/kinguser/cez$1;->bZw:Ljava/lang/String;

    iget-object v0, v0, Lcom/kingroot/kinguser/at;->iv:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/cez;->a(Lcom/kingroot/kinguser/cez;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/kingroot/kinguser/cez$1;->bZs:Lcom/kingroot/kinguser/cez$a;

    iget v1, p0, Lcom/kingroot/kinguser/cez$1;->ael:I

    invoke-interface {v0, v1, v6, v7}, Lcom/kingroot/kinguser/cez$a;->l(III)V

    goto/16 :goto_0
.end method
