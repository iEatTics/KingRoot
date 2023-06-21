.class Lcom/kingroot/kinguser/activitys/CommonDialogActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/activitys/CommonDialogActivity$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->cU(I)Lcom/kingroot/kinguser/activitys/CommonDialogActivity$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aii:I

.field final synthetic aij:Lcom/kingroot/kinguser/activitys/CommonDialogActivity;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/activitys/CommonDialogActivity;I)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity$1;->aij:Lcom/kingroot/kinguser/activitys/CommonDialogActivity;

    iput p2, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity$1;->aii:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cV(I)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 150
    if-ne p1, v2, :cond_0

    .line 151
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1874b

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 152
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity$1;->aii:I

    const/4 v3, 0x2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/ady;->b(IIIII)V

    .line 153
    invoke-static {}, Lcom/kingroot/kinguser/aeg;->um()Lcom/kingroot/kinguser/aeg;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity$1;->aii:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aeg;->cK(I)V

    .line 159
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1874c

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 156
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity$1;->aii:I

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/ady;->b(IIIII)V

    .line 157
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aks;->bV(Z)V

    goto :goto_0
.end method
