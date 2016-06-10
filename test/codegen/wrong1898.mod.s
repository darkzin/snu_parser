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
    #    -16(%ebp)   4  [ $t13      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t14      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t15      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t16      <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    ReadInt                 #   0:     call   t13 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t14 <- t13, 47139
    movl    $47139, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t14
    jmp     l_f0_exit              
l_f0_2_while_cond:
    jmp     l_f0_3_while_body       #   4:     goto   3_while_body
    movl    $0, %eax                #   5:     if     0 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_1                  #   6:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   8:     goto   2_while_cond
l_f0_1:
    call    dummyINTfunc            #  10:     call   t15 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     add    t16 <- t15, 24418
    movl    $24418, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     return t16
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t13      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t14      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t15      <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $v0       <char> %ebp-22 ]

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
    call    dummyCHARfunc           #   0:     call   t13 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t13
    movb    %al, -22(%ebp)         
    movl    $87996, %eax            #   2:     mul    t14 <- 87996, 77191
    movl    $77191, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     return t14
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   4:     call   t15 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   5:     assign v0 <- t15
    movb    %al, -22(%ebp)         

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t13      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t14      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t15      <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 20 of <array 100 of <array 24 of <array 52 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 86 of <array 6 of <array 72 of <array 9 of <array 75 of <char>>>>>>> %ebp+16 ]
    #    -21(%ebp)   1  [ $v3       <bool> %ebp-21 ]

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
    jmp     l_f2_1                  #   0:     goto   1
l_f2_1:
    movl    $1, %eax                #   2:     assign t13 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   3:     goto   3
    movl    $0, %eax                #   4:     assign t13 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   6:     assign v3 <- t13
    movb    %al, -21(%ebp)         
    call    dummyBOOLfunc           #   7:     call   t14 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $0, %eax                #   8:     param  0 <- 0
    pushl   %eax                   
    call    f0                      #   9:     call   t15 <- f0
    addl    $4, %esp               
    movl    %eax, -20(%ebp)        
    movl    $82210, %eax            #  10:     param  0 <- 82210
    pushl   %eax                   
    call    WriteInt                #  11:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f2_13                 #  12:     goto   13
l_f2_13:
    jmp     l_f2_8                  #  14:     goto   8
l_f2_8:

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t12      <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t2       <ptr(4) to <array 86 of <array 6 of <array 72 of <array 9 of <array 75 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t3       <ptr(4) to <array 4 of <array 20 of <array 100 of <array 24 of <array 52 of <bool>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t4       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t5       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t6       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t7       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t8       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t9       <int> %ebp-60 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $48, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $12, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    movl    $84452, %eax            #   1:     if     84452 > 73111 goto 4_if_true
    movl    $73111, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_4_if_true       
    jmp     l_test_5_if_false       #   2:     goto   5_if_false
l_test_4_if_true:
    movl    $97, %eax               #   4:     if     97 < 98 goto 8
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_8               
    jmp     l_test_9                #   5:     goto   9
l_test_8:
    movl    $1, %eax                #   7:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_10               #   8:     goto   10
l_test_9:
    movl    $0, %eax                #  10:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_10:
    movzbl  -13(%ebp), %eax         #  12:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_3                #  13:     goto   3
l_test_5_if_false:
l_test_3:
    jmp     l_test_1_while_cond     #  16:     goto   1_while_cond
    call    dummyCHARfunc           #  17:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  18:     assign v1 <- t1
    movb    %al, v1                
    leal    v3, %eax                #  19:     &()    t2 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  20:     param  2 <- t2
    pushl   %eax                   
    leal    v2, %eax                #  21:     &()    t3 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  22:     param  1 <- t3
    pushl   %eax                   
    movl    $60856, %eax            #  23:     add    t4 <- 60856, 49891
    movl    $49891, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  24:     sub    t5 <- t4, 42836
    movl    $42836, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  25:     sub    t6 <- t5, 45164
    movl    $45164, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  26:     sub    t7 <- t6, 68123
    movl    $68123, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  27:     add    t8 <- t7, 40416
    movl    $40416, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  28:     sub    t9 <- t8, 15647
    movl    $15647, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $15064, %eax            #  29:     div    t10 <- 15064, 62632
    movl    $62632, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -60(%ebp), %eax         #  30:     sub    t11 <- t9, t10
    movl    -20(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  31:     param  0 <- t11
    pushl   %eax                   
    call    f2                      #  32:     call   t12 <- f2
    addl    $12, %esp              
    movb    %al, -25(%ebp)         

l_test_exit:
    # epilogue
    addl    $48, %esp               # remove locals
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

    # scope: test
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 4 of <array 20 of <array 100 of <array 24 of <array 52 of <bool>>>>>>
    .long    5
    .long    4
    .long   20
    .long  100
    .long   24
    .long   52
    .skip 9984000
v3:                                 # <array 86 of <array 6 of <array 72 of <array 9 of <array 75 of <char>>>>>>
    .long    5
    .long   86
    .long    6
    .long   72
    .long    9
    .long   75
    .skip 25077600








    # end of global data section
    #-----------------------------------------

    .end
##################################################
