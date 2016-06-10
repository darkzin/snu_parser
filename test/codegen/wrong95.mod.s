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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 4 of <array 5 of <array 4 of <array 10 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 8 of <array 2 of <array 8 of <array 2 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 5 of <array 7 of <array 5 of <array 7 of <bool>>>>>>> %ebp+20 ]
    #    -22(%ebp)   1  [ $v4       <char> %ebp-22 ]

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
    movl    $98, %eax               #   0:     assign v4 <- 98
    movb    %al, -22(%ebp)         
l_f0_2_while_cond:
    jmp     l_f0_6                  #   2:     goto   6
    movl    $1, %eax                #   3:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_7                  #   4:     goto   7
l_f0_6:
    movl    $0, %eax                #   6:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_7:
    movzbl  -13(%ebp), %eax         #   8:     if     t2 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_1                  #   9:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #  11:     goto   2_while_cond
l_f0_1:
    movl    $51588, %eax            #  13:     sub    t3 <- 51588, 40338
    movl    $40338, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $50235, %eax            #  14:     if     50235 = t3 goto 10
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_10                
    jmp     l_f0_11                 #  15:     goto   11
l_f0_10:
    movl    $1, %eax                #  17:     assign t4 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_12                 #  18:     goto   12
l_f0_11:
    movl    $0, %eax                #  20:     assign t4 <- 0
    movb    %al, -21(%ebp)         
l_f0_12:
    movzbl  -21(%ebp), %eax         #  22:     assign v1 <- t4
    movb    %al, 12(%ebp)          

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 3 of <array 9 of <array 1 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #    -53(%ebp)   1  [ $v1       <char> %ebp-53 ]
    #    -60(%ebp)   4  [ $v2       <int> %ebp-60 ]

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
l_f1_1_while_cond:
    movl    $38367, %eax            #   1:     sub    t2 <- 38367, 47273
    movl    $47273, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     add    t3 <- t2, 28559
    movl    $28559, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     sub    t4 <- t3, 67989
    movl    $67989, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     add    t5 <- t4, 76161
    movl    $76161, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   5:     if     t5 = 86050 goto 2_while_body
    movl    $86050, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   6:     goto   0
l_f1_2_while_body:
    jmp     l_f1_4                  #   8:     goto   4
l_f1_4:
    jmp     l_f1_1_while_cond       #  10:     goto   1_while_cond
l_f1_0:
    movl    $35708, %eax            #  12:     mul    t6 <- 35708, 50851
    movl    $50851, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  13:     mul    t7 <- t6, 37561
    movl    $37561, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  14:     div    t8 <- t7, 29266
    movl    $29266, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    $47835, %eax            #  15:     add    t9 <- 47835, t8
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  16:     return t9
    jmp     l_f1_exit              
l_f1_9_while_cond:
    movl    $37846, %eax            #  18:     mul    t10 <- 37846, 95921
    movl    $95921, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  19:     mul    t11 <- t10, 33911
    movl    $33911, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $49411, %eax            #  20:     if     49411 < t11 goto 10_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_10_while_body     
    jmp     l_f1_8                  #  21:     goto   8
l_f1_10_while_body:
    movl    $97, %eax               #  23:     assign v1 <- 97
    movb    %al, -53(%ebp)         
    movl    $62469, %eax            #  24:     assign v2 <- 62469
    movl    %eax, -60(%ebp)        
    jmp     l_f1_9_while_cond       #  25:     goto   9_while_cond
l_f1_8:

l_f1_exit:
    # epilogue
    addl    $48, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 7 of <array 9 of <array 3 of <array 8 of <int>>>>>>> %ebp+16 ]

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
    movl    $99, %eax               #   0:     if     99 > 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t2
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #   9:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  10:     param  0 <- t3
    pushl   %eax                   
    call    WriteChar               #  11:     call   WriteChar
    addl    $4, %esp               
l_f2_7_while_cond:
    movl    $97, %eax               #  13:     if     97 < 100 goto 8_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_8_while_body      
    jmp     l_f2_6                  #  14:     goto   6
l_f2_8_while_body:
    jmp     l_f2_12_if_false        #  16:     goto   12_if_false
    jmp     l_f2_10                 #  17:     goto   10
l_f2_12_if_false:
l_f2_10:
    jmp     l_f2_7_while_cond       #  20:     goto   7_while_cond
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]

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
    jmp     l_test_exit            
    jmp     l_test_3                #   1:     goto   3
    jmp     l_test_3                #   2:     goto   3
    jmp     l_test_3                #   3:     goto   3
    jmp     l_test_3                #   4:     goto   3
    movl    $1, %eax                #   5:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_4                #   6:     goto   4
l_test_3:
    movl    $0, %eax                #   8:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_4:
    movzbl  -13(%ebp), %eax         #  10:     assign v0 <- t0
    movb    %al, v0                
l_test_11_while_cond:
    jmp     l_test_10               #  12:     goto   10
    jmp     l_test_exit            
    jmp     l_test_11_while_cond    #  14:     goto   11_while_cond
l_test_10:
    call    dummyBOOLfunc           #  16:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
