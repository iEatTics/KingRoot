.class Lcom/kingroot/kinguser/cer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cff$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cer;->a(Lcom/kingroot/kinguser/cer$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ael:I

.field final synthetic bYQ:Lcom/kingroot/kinguser/cer$a;

.field final synthetic bYR:Lcom/kingroot/kinguser/au;

.field final synthetic bYS:Lcom/kingroot/kinguser/cer;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cer;Lcom/kingroot/kinguser/cer$a;ILcom/kingroot/kinguser/au;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/kingroot/kinguser/cer$1;->bYS:Lcom/kingroot/kinguser/cer;

    iput-object p2, p0, Lcom/kingroot/kinguser/cer$1;->bYQ:Lcom/kingroot/kinguser/cer$a;

    iput p3, p0, Lcom/kingroot/kinguser/cer$1;->ael:I

    iput-object p4, p0, Lcom/kingroot/kinguser/cer$1;->bYR:Lcom/kingroot/kinguser/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZIILjava/util/ArrayList;)V
    .locals 10
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
    const v9, -0x14070d0

    const/4 v8, 0x0

    const v2, -0x1443fd0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 154
    if-eqz p2, :cond_0

    .line 156
    iget-object v0, p0, Lcom/kingroot/kinguser/cer$1;->bYQ:Lcom/kingroot/kinguser/cer$a;

    iget v1, p0, Lcom/kingroot/kinguser/cer$1;->ael:I

    invoke-interface {v0, v1, v6, p2, v7}, Lcom/kingroot/kinguser/cer$a;->a(IIILjava/lang/String;)V

    .line 220
    :goto_0
    return-void

    .line 160
    :cond_0
    if-nez p4, :cond_1

    .line 162
    iget-object v0, p0, Lcom/kingroot/kinguser/cer$1;->bYQ:Lcom/kingroot/kinguser/cer$a;

    iget v1, p0, Lcom/kingroot/kinguser/cer$1;->ael:I

    invoke-interface {v0, v1, v6, v2, v7}, Lcom/kingroot/kinguser/cer$a;->a(IIILjava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/kingroot/kinguser/cer$1;->bYQ:Lcom/kingroot/kinguser/cer$a;

    iget v1, p0, Lcom/kingroot/kinguser/cer$1;->ael:I

    invoke-interface {v0, v1, v6, v2, v7}, Lcom/kingroot/kinguser/cer$a;->a(IIILjava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_2
    invoke-virtual {p4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/kingroot/kinguser/bg;

    .line 173
    if-nez v5, :cond_3

    .line 175
    iget-object v0, p0, Lcom/kingroot/kinguser/cer$1;->bYQ:Lcom/kingroot/kinguser/cer$a;

    iget v1, p0, Lcom/kingroot/kinguser/cer$1;->ael:I

    invoke-interface {v0, v1, v6, v2, v7}, Lcom/kingroot/kinguser/cer$a;->a(IIILjava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_3
    iget v0, v5, Lcom/kingroot/kinguser/bg;->retCode:I

    if-eqz v0, :cond_4

    .line 181
    iget-object v0, p0, Lcom/kingroot/kinguser/cer$1;->bYQ:Lcom/kingroot/kinguser/cer$a;

    iget v1, p0, Lcom/kingroot/kinguser/cer$1;->ael:I

    iget v2, v5, Lcom/kingroot/kinguser/bg;->retCode:I

    invoke-interface {v0, v1, v6, v2, v7}, Lcom/kingroot/kinguser/cer$a;->a(IIILjava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_4
    iget v0, v5, Lcom/kingroot/kinguser/bg;->jZ:I

    if-eqz v0, :cond_5

    .line 187
    iget-object v0, p0, Lcom/kingroot/kinguser/cer$1;->bYQ:Lcom/kingroot/kinguser/cer$a;

    iget v1, p0, Lcom/kingroot/kinguser/cer$1;->ael:I

    const v2, -0x1450320

    invoke-interface {v0, v1, v6, v2, v7}, Lcom/kingroot/kinguser/cer$a;->a(IIILjava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_5
    iget-object v2, v5, Lcom/kingroot/kinguser/bg;->data:[B

    .line 192
    if-nez v2, :cond_6

    .line 194
    iget-object v0, p0, Lcom/kingroot/kinguser/cer$1;->bYQ:Lcom/kingroot/kinguser/cer$a;

    iget v1, p0, Lcom/kingroot/kinguser/cer$1;->ael:I

    const v2, -0x1406f45

    invoke-interface {v0, v1, v6, v2, v7}, Lcom/kingroot/kinguser/cer$a;->a(IIILjava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_6
    new-instance v3, Lcom/kingroot/kinguser/bc;

    invoke-direct {v3}, Lcom/kingroot/kinguser/bc;-><init>()V

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cer$1;->bYS:Lcom/kingroot/kinguser/cer;

    invoke-static {v0}, Lcom/kingroot/kinguser/cer;->a(Lcom/kingroot/kinguser/cer;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/cer$1;->bYS:Lcom/kingroot/kinguser/cer;

    invoke-static {v1}, Lcom/kingroot/kinguser/cer;->b(Lcom/kingroot/kinguser/cer;)Lcom/kingroot/kinguser/cff;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/cff;->fw()Lcom/kingroot/kinguser/cez$b;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/cez$b;->bZv:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v4, 0x0

    iget v5, v5, Lcom/kingroot/kinguser/bg;->flag:I

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/ceq;->a(Landroid/content/Context;[B[BLcom/qq/taf/jce/JceStruct;ZI)Lcom/qq/taf/jce/JceStruct;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 209
    if-nez v0, :cond_7

    .line 211
    iget-object v0, p0, Lcom/kingroot/kinguser/cer$1;->bYQ:Lcom/kingroot/kinguser/cer$a;

    iget v1, p0, Lcom/kingroot/kinguser/cer$1;->ael:I

    invoke-interface {v0, v1, v6, v9, v7}, Lcom/kingroot/kinguser/cer$a;->a(IIILjava/lang/String;)V

    goto/16 :goto_0

    .line 205
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/kingroot/kinguser/cer$1;->bYQ:Lcom/kingroot/kinguser/cer$a;

    iget v1, p0, Lcom/kingroot/kinguser/cer$1;->ael:I

    invoke-interface {v0, v1, v6, v9, v7}, Lcom/kingroot/kinguser/cer$a;->a(IIILjava/lang/String;)V

    goto/16 :goto_0

    .line 216
    :cond_7
    check-cast v0, Lcom/kingroot/kinguser/bc;

    .line 218
    iget-object v1, p0, Lcom/kingroot/kinguser/cer$1;->bYS:Lcom/kingroot/kinguser/cer;

    iget-object v2, v0, Lcom/kingroot/kinguser/bc;->it:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingroot/kinguser/cer$1;->bYR:Lcom/kingroot/kinguser/au;

    invoke-static {v1, v2, v3, v6}, Lcom/kingroot/kinguser/cer;->a(Lcom/kingroot/kinguser/cer;Ljava/lang/String;Lcom/kingroot/kinguser/au;Z)V

    .line 219
    iget-object v1, p0, Lcom/kingroot/kinguser/cer$1;->bYQ:Lcom/kingroot/kinguser/cer$a;

    iget v2, p0, Lcom/kingroot/kinguser/cer$1;->ael:I

    iget-object v0, v0, Lcom/kingroot/kinguser/bc;->it:Ljava/lang/String;

    invoke-interface {v1, v2, v6, v8, v0}, Lcom/kingroot/kinguser/cer$a;->a(IIILjava/lang/String;)V

    goto/16 :goto_0
.end method
