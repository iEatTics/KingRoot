.class Lcom/kingroot/kinguser/beg$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bed$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bkY:Ljava/util/List;

.field final synthetic bkZ:Lcom/kingroot/kinguser/beg;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/beg;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/kingroot/kinguser/beg$2;->bkZ:Lcom/kingroot/kinguser/beg;

    iput-object p2, p0, Lcom/kingroot/kinguser/beg$2;->bkY:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nF()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/kingroot/kinguser/beg$2;->bkY:Ljava/util/List;

    return-object v0
.end method
