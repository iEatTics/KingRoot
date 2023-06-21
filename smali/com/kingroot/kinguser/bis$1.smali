.class Lcom/kingroot/kinguser/bis$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/rw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bis;->adj()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic buy:Lcom/kingroot/kinguser/bis;

.field final synthetic val$ret:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bis;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/kingroot/kinguser/bis$1;->buy:Lcom/kingroot/kinguser/bis;

    iput-object p2, p0, Lcom/kingroot/kinguser/bis$1;->val$ret:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/bis$1;->buy:Lcom/kingroot/kinguser/bis;

    iget-object v1, p0, Lcom/kingroot/kinguser/bis$1;->val$ret:Ljava/util/List;

    invoke-static {v0, p1, v1}, Lcom/kingroot/kinguser/bis;->a(Lcom/kingroot/kinguser/bis;Landroid/database/Cursor;Ljava/util/List;)V

    .line 88
    return-void
.end method
