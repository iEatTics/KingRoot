.class Lcom/kingroot/kinguser/vl$2;
.super Lcom/kingroot/kinguser/wo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/vl;->dd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic KX:Ljava/lang/String;

.field final synthetic La:Lcom/kingroot/kinguser/vl;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/vl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/kingroot/kinguser/vl$2;->La:Lcom/kingroot/kinguser/vl;

    iput-object p2, p0, Lcom/kingroot/kinguser/vl$2;->KX:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kingroot/kinguser/wo;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-super {p0}, Lcom/kingroot/kinguser/wo;->run()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    iget-object v1, p0, Lcom/kingroot/kinguser/vl$2;->KX:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-static {}, Lcom/kingroot/kinguser/vt;->lT()Lcom/kingroot/kinguser/vt;

    move-result-object v1

    const v2, 0x6157b

    invoke-virtual {v1, v2, v3, v0, v3}, Lcom/kingroot/kinguser/vt;->a(IILjava/util/List;Z)V

    .line 50
    return-void
.end method
