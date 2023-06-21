.class Lcom/kingroot/kinguser/awo$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aws;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/awo;->Td()Lcom/kingroot/kinguser/aws;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aVb:Lcom/kingroot/kinguser/awo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/awo;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/kingroot/kinguser/awo$8;->aVb:Lcom/kingroot/kinguser/awo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public jT(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 538
    const/4 v0, 0x3

    .line 540
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 553
    :cond_0
    :goto_0
    return v0

    .line 547
    :cond_1
    invoke-static {p1}, Lcom/kingroot/kinguser/avb;->jo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    invoke-static {p1}, Lcom/kingroot/kinguser/avf;->jr(Ljava/lang/String;)Lcom/kingroot/kinguser/avb;

    move-result-object v1

    .line 549
    if-eqz v1, :cond_0

    .line 550
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/avb;->j(Lcom/kingroot/kinguser/abc;)I

    move-result v0

    goto :goto_0
.end method
