.class final Lcom/kingroot/kinguser/un$1;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/un;->a(Lcom/kingroot/kinguser/um;)Lcom/kingroot/kinguser/ho;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic IR:Lcom/kingroot/kinguser/um;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/um;)V
    .locals 1

    .prologue
    .line 297
    iput-object p1, p0, Lcom/kingroot/kinguser/un$1;->IR:Lcom/kingroot/kinguser/um;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    iget-object v0, p0, Lcom/kingroot/kinguser/un$1;->IR:Lcom/kingroot/kinguser/um;

    iget-object v0, v0, Lcom/kingroot/kinguser/um;->pkgName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/un$1;->add(Ljava/lang/Object;)Z

    .line 299
    return-void
.end method
