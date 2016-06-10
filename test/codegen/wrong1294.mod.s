##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t22      <char> %ebp-61 ]
    #    -62(%ebp)   1  [ $t3       <bool> %ebp-62 ]
    #    -68(%ebp)   4  [ $t4       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 64 of <array 46 of <array 78 of <array 50 of <array 61 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 28 of <array 84 of <array 17 of <array 35 of <array 38 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -89(%ebp)   1  [ $v3       <bool> %ebp-89 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t3 <- dummyBOOLfunc
    movb    %al, -62(%ebp)         
    movzbl  -62(%ebp), %eax         #   2:     if     t3 # 0 goto 2_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    movl    $2, %eax                #   5:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   6:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   7:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    $49701, %eax            #   8:     mul    t5 <- 49701, t4
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   9:     add    t6 <- t5, 90998
    movl    $90998, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #  10:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  11:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  12:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  13:     mul    t8 <- t6, t7
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  14:     add    t9 <- t8, 21653
    movl    $21653, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $4, %eax                #  15:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  16:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  17:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -88(%ebp), %eax         #  18:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     add    t12 <- t11, 99503
    movl    $99503, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  20:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  21:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  22:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  23:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  24:     add    t15 <- t14, 52444
    movl    $52444, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  25:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    12(%ebp), %eax          #  26:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  27:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  28:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  29:     add    t19 <- v1, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $98, %eax               #  30:     assign @t19 <- 98
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $99, %eax               #  31:     if     99 # 97 goto 6_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_6_if_true         
    jmp     l_f0_7_if_false         #  32:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #  34:     goto   5
l_f0_7_if_false:
l_f0_5:
    movl    $1, %eax                #  37:     assign v3 <- 1
    movb    %al, -89(%ebp)         
    movl    $100, %eax              #  38:     if     100 <= 100 goto 11_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  39:     goto   12_if_false
l_f0_11_if_true:
    jmp     l_f0_10                 #  41:     goto   10
l_f0_12_if_false:
l_f0_10:
    jmp     l_f0_1_while_cond       #  44:     goto   1_while_cond
l_f0_0:
    movl    $26530, %eax            #  46:     sub    t20 <- 26530, 50512
    movl    $50512, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  47:     sub    t21 <- t20, 30740
    movl    $30740, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  48:     return t21
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  49:     call   t22 <- dummyCHARfunc
    movb    %al, -61(%ebp)         

l_f0_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 51 of <array 80 of <array 6 of <array 75 of <array 72 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -16(%ebp)   1  [ $v3       <char> %ebp-16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   1:     goto   3
    movl    $1, %eax                #   2:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_4                  #   3:     goto   4
l_f1_3:
    movl    $0, %eax                #   5:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f1_4:
    movzbl  -14(%ebp), %eax         #   7:     assign v1 <- t4
    movb    %al, 12(%ebp)          
    movl    $99, %eax               #   8:     assign v3 <- 99
    movb    %al, -16(%ebp)         
    movl    $100, %eax              #   9:     return 100
    jmp     l_f1_exit              
    jmp     l_f1_14_if_false        #  10:     goto   14_if_false
    jmp     l_f1_12                 #  11:     goto   12
l_f1_14_if_false:
l_f1_12:
    movl    $48321, %eax            #  14:     assign v2 <- 48321
    movl    %eax, 16(%ebp)         
    movl    $97, %eax               #  15:     if     97 = 97 goto 17_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_17_if_true        
    jmp     l_f1_18_if_false        #  16:     goto   18_if_false
l_f1_17_if_true:
    jmp     l_f1_16                 #  18:     goto   16
l_f1_18_if_false:
l_f1_16:
    movl    $99, %eax               #  21:     return 99
    jmp     l_f1_exit              
    movl    $54354, %eax            #  22:     if     54354 # 322 goto 22
    movl    $322, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_22                
    jmp     l_f1_23                 #  23:     goto   23
l_f1_22:
    movl    $1, %eax                #  25:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_24                 #  26:     goto   24
l_f1_23:
    movl    $0, %eax                #  28:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f1_24:
    movzbl  -15(%ebp), %eax         #  30:     assign v1 <- t5
    movb    %al, 12(%ebp)          
l_f1_27_while_cond:
    movl    $98, %eax               #  32:     if     98 > 97 goto 28_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_28_while_body     
    jmp     l_f1_26                 #  33:     goto   26
l_f1_28_while_body:
    jmp     l_f1_27_while_cond      #  35:     goto   27_while_cond
l_f1_26:
    jmp     l_f1_7                  #  37:     goto   7
l_f1_7:

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <ptr(4) to <array 28 of <array 84 of <array 17 of <array 35 of <array 38 of <char>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <ptr(4) to <array 64 of <array 46 of <array 78 of <array 50 of <array 61 of <int>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t3       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t4       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t5       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 55 of <array 10 of <array 8 of <array 56 of <array 22 of <int>>>>>>> %ebp+8 ]
    #   -100(%ebp)   4  [ $v1       <int> %ebp-100 ]
    #   1493456772(%ebp)  -1493456872  [ $v2       <array 64 of <array 46 of <array 78 of <array 50 of <array 61 of <int>>>>>> %ebp+1493456772 ]
    #   1440278028(%ebp)  53178744  [ $v3       <array 28 of <array 84 of <array 17 of <array 35 of <array 38 of <char>>>>>> %ebp+1440278028 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-1440278040, %esp      # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-360069510, %ecx      
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,1493456772(%ebp)     # local array 'v2': 5 dimensions
    movl    $64,1493456776(%ebp)    #   dimension 1: 64 elements
    movl    $46,1493456780(%ebp)    #   dimension 2: 46 elements
    movl    $78,1493456784(%ebp)    #   dimension 3: 78 elements
    movl    $50,1493456788(%ebp)    #   dimension 4: 50 elements
    movl    $61,1493456792(%ebp)    #   dimension 5: 61 elements
    movl    $5,1440278028(%ebp)     # local array 'v3': 5 dimensions
    movl    $28,1440278032(%ebp)    #   dimension 1: 28 elements
    movl    $84,1440278036(%ebp)    #   dimension 2: 84 elements
    movl    $17,1440278040(%ebp)    #   dimension 3: 17 elements
    movl    $35,1440278044(%ebp)    #   dimension 4: 35 elements
    movl    $38,1440278048(%ebp)    #   dimension 5: 38 elements

    # function body
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   3:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   4:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $85424, %eax            #   5:     mul    t4 <- 85424, t3
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    $89140, %eax            #   6:     div    t5 <- 89140, 60843
    movl    $60843, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   7:     mul    t6 <- t5, 76539
    movl    $76539, %ebx           
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -76(%ebp), %eax         #   8:     add    t7 <- t4, t6
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #   9:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  10:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  11:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  12:     mul    t9 <- t7, t8
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  13:     add    t10 <- t9, 35012
    movl    $35012, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  16:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  17:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     add    t13 <- t12, 47735
    movl    $47735, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  21:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  22:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  23:     add    t16 <- t15, 45940
    movl    $45940, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  24:     mul    t17 <- t16, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  25:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  26:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  27:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  28:     add    t20 <- v0, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $94671, %eax            #  29:     assign @t20 <- 94671
    movl    -56(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f2_2_while_cond       #  30:     goto   2_while_cond
    movl    $98, %eax               #  31:     param  2 <- 98
    pushl   %eax                   
    leal    1440278028(%ebp), %eax  #  32:     &()    t21 <- v3
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  33:     param  1 <- t21
    pushl   %eax                   
    leal    1493456772(%ebp), %eax  #  34:     &()    t22 <- v2
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  35:     param  0 <- t22
    pushl   %eax                   
    call    f0                      #  36:     call   t23 <- f0
    addl    $12, %esp              
    movl    %eax, -68(%ebp)        

l_f2_exit:
    # epilogue
    addl    $-1440278040, %esp      # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
    call    dummyBOOLfunc           #   2:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t0 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   4:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
    call    dummyINTfunc            #   8:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $6763, %eax             #   9:     if     6763 > t1 goto 6_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_6_if_true       
    jmp     l_test_7_if_false       #  10:     goto   7_if_false
l_test_6_if_true:
    call    dummyBOOLfunc           #  12:     call   t2 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_test_5                #  13:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $37135, %eax            #  16:     if     37135 < 77020 goto 11_if_true
    movl    $77020, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_11_if_true      
    jmp     l_test_12_if_false      #  17:     goto   12_if_false
l_test_11_if_true:
    movl    $17183, %eax            #  19:     if     17183 < 69845 goto 15_if_true
    movl    $69845, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_15_if_true      
    jmp     l_test_16_if_false      #  20:     goto   16_if_false
l_test_15_if_true:
    jmp     l_test_14               #  22:     goto   14
l_test_16_if_false:
l_test_14:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_10               #  27:     goto   10
l_test_12_if_false:
l_test_10:

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4









    # end of global data section
    #-----------------------------------------

    .end
##################################################
