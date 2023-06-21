.class Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->yQ()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ate:Lcom/kingroot/kinguser/cd;

.field final synthetic auf:Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;

.field final synthetic aug:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;Ljava/util/ArrayList;Lcom/kingroot/kinguser/cd;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit$2;->auf:Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;

    iput-object p2, p0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit$2;->aug:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit$2;->ate:Lcom/kingroot/kinguser/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 318
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Cs()I

    move-result v0

    .line 319
    iget-object v1, p0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit$2;->aug:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/kingroot/kinguser/aif;->m(Ljava/util/ArrayList;)V

    .line 320
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aks;->ej(I)V

    .line 323
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit$2;->ate:Lcom/kingroot/kinguser/cd;

    invoke-static {v0}, Lcom/kingroot/kinguser/ajc;->a(Lcom/kingroot/kinguser/cd;)V

    .line 324
    return-void
.end method
