.class Lcom/kingroot/kinguser/ry$a;
.super Lcom/kingroot/kinguser/rx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic Gv:Lcom/kingroot/kinguser/ry;

.field private Gw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/rx$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/ry;Landroid/content/Context;Ljava/lang/String;ILcom/kingroot/kinguser/rx$a;)V
    .locals 1

    .prologue
    .line 231
    iput-object p1, p0, Lcom/kingroot/kinguser/ry$a;->Gv:Lcom/kingroot/kinguser/ry;

    .line 232
    invoke-direct {p0, p2, p3, p4}, Lcom/kingroot/kinguser/rx;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ry$a;->Gw:Ljava/util/List;

    .line 235
    iget-object v0, p0, Lcom/kingroot/kinguser/ry$a;->Gw:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    return-void
.end method


# virtual methods
.method protected jd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/rx$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/kingroot/kinguser/ry$a;->Gw:Ljava/util/List;

    return-object v0
.end method
