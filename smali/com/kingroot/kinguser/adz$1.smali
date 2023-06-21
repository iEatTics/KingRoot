.class Lcom/kingroot/kinguser/adz$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/vo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/adz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/vo$a",
        "<",
        "Lcom/kingroot/kinguser/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aei:Lcom/kingroot/kinguser/adz;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/adz;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/kingroot/kinguser/adz$1;->aei:Lcom/kingroot/kinguser/adz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Lcom/kingroot/kinguser/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/b;",
            ">;",
            "Lcom/kingroot/kinguser/c;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 20
    invoke-static {}, Lcom/kingroot/kinguser/awn;->Ta()Lcom/kingroot/kinguser/awn;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/awn;->b(Ljava/util/List;Lcom/kingroot/kinguser/c;)Z

    move-result v0

    return v0
.end method
