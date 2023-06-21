.class Lcom/kingroot/kinguser/bei$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/alz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bei;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ble:Lcom/kingroot/kinguser/bei;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bei;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/kingroot/kinguser/bei$4;->ble:Lcom/kingroot/kinguser/bei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HU()V
    .locals 3

    .prologue
    .line 79
    invoke-static {}, Lcom/kingroot/kinguser/bei;->Zr()Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 80
    iget-object v1, p0, Lcom/kingroot/kinguser/bei$4;->ble:Lcom/kingroot/kinguser/bei;

    invoke-static {v1}, Lcom/kingroot/kinguser/bei;->a(Lcom/kingroot/kinguser/bei;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-static {}, Lcom/kingroot/kinguser/bei;->Zr()Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 85
    :cond_0
    return-void
.end method
