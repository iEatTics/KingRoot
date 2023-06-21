.class Lcom/kingroot/kinguser/aot$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic aGx:Lcom/kingroot/kinguser/aot;

.field pkgName:Ljava/lang/String;

.field type:I


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aot;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/kingroot/kinguser/aot$a;->aGx:Lcom/kingroot/kinguser/aot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p2, p0, Lcom/kingroot/kinguser/aot$a;->pkgName:Ljava/lang/String;

    .line 116
    iput p3, p0, Lcom/kingroot/kinguser/aot$a;->type:I

    .line 117
    return-void
.end method
