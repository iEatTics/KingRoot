.class Lcom/kingroot/kinguser/vi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/zk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/vi;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/zk$a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic KR:Lcom/kingroot/kinguser/vi;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/vi;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/kingroot/kinguser/vi$1;->KR:Lcom/kingroot/kinguser/vi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingroot/kinguser/vi$1;->KR:Lcom/kingroot/kinguser/vi;

    invoke-static {v0}, Lcom/kingroot/kinguser/vi;->a(Lcom/kingroot/kinguser/vi;)V

    .line 110
    const/4 v0, 0x0

    return-object v0
.end method
