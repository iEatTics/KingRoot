.class Lcom/kingroot/kinguser/cfh$d$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cff$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cfh$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ccs:Lcom/kingroot/kinguser/cfh$d;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cfh$d;)V
    .locals 0

    .prologue
    .line 966
    iput-object p1, p0, Lcom/kingroot/kinguser/cfh$d$6;->ccs:Lcom/kingroot/kinguser/cfh$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZIILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 970
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh$d$6;->ccs:Lcom/kingroot/kinguser/cfh$d;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/cfh$d;->a(Lcom/kingroot/kinguser/cfh$d;ZIILjava/util/ArrayList;)V

    .line 971
    return-void
.end method
