.class Lcom/kingroot/kinguser/att$1$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/att$1;->execute(Ljava/util/List;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aQg:Lcom/kingroot/kinguser/att$1;

.field final synthetic anx:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/att$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/kingroot/kinguser/att$1$2;->aQg:Lcom/kingroot/kinguser/att$1;

    iput-object p2, p0, Lcom/kingroot/kinguser/att$1$2;->anx:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/att$1$2;->anx:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/asw;->iQ(Ljava/lang/String;)V

    .line 60
    return-void
.end method
