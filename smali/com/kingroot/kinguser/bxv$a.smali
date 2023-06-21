.class public Lcom/kingroot/kinguser/bxv$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bxv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public WP:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public pid:I

.field public ppid:I

.field public uid:I


# direct methods
.method constructor <init>(IILjava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bxv$a;->name:Ljava/lang/String;

    .line 146
    iput p1, p0, Lcom/kingroot/kinguser/bxv$a;->pid:I

    .line 147
    iput p2, p0, Lcom/kingroot/kinguser/bxv$a;->ppid:I

    .line 148
    iput-object p3, p0, Lcom/kingroot/kinguser/bxv$a;->name:Ljava/lang/String;

    .line 149
    iput p4, p0, Lcom/kingroot/kinguser/bxv$a;->uid:I

    .line 150
    iput-object p5, p0, Lcom/kingroot/kinguser/bxv$a;->WP:Ljava/lang/String;

    .line 151
    return-void
.end method
