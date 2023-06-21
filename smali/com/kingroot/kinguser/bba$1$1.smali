.class Lcom/kingroot/kinguser/bba$1$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bba$1;->execute(Ljava/util/List;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bez:Lcom/kingroot/kinguser/bba$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bba$1;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/kingroot/kinguser/bba$1$1;->bez:Lcom/kingroot/kinguser/bba$1;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 83
    invoke-static {}, Lcom/kingroot/kinguser/bfr;->aaH()Lcom/kingroot/kinguser/bfr;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bfr;->dO(Z)V

    .line 84
    return-void
.end method
