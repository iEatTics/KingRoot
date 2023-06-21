.class Lcom/kingroot/kinguser/activitys/CommonDialogActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/activitys/CommonDialogActivity$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->o(Ljava/lang/String;I)Lcom/kingroot/kinguser/activitys/CommonDialogActivity$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aii:I

.field final synthetic aij:Lcom/kingroot/kinguser/activitys/CommonDialogActivity;

.field final synthetic aik:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/activitys/CommonDialogActivity;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity$2;->aij:Lcom/kingroot/kinguser/activitys/CommonDialogActivity;

    iput p2, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity$2;->aii:I

    iput-object p3, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity$2;->aik:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cV(I)V
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 172
    if-ne p1, v3, :cond_1

    .line 173
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1874d

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 174
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity$2;->aii:I

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/ady;->b(IIIII)V

    .line 176
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity$2;->aik:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yw()Lcom/kingroot/kinguser/aiv;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity$2;->aik:Ljava/lang/String;

    iget v2, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity$2;->aii:I

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aiv;->s(Ljava/lang/String;I)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1874e

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 182
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity$2;->aii:I

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/ady;->b(IIIII)V

    .line 183
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/aks;->bV(Z)V

    goto :goto_0
.end method
