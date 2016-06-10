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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 60 of <array 84 of <array 32 of <array 45 of <array 11 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 54 of <array 24 of <array 93 of <array 52 of <array 99 of <bool>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $98, %eax               #   0:     if     98 <= 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #   4:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   5:     if     t1 = 1 goto 6_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   6:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #   8:     goto   5
l_f0_7_if_false:
l_f0_5:
    jmp     l_f0_0                  #  11:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_9_while_cond:
    call    dummyBOOLfunc           #  15:     call   t2 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  16:     if     t2 = 1 goto 12
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_12                
    jmp     l_f0_8                  #  17:     goto   8
l_f0_12:
    jmp     l_f0_8                  #  19:     goto   8
    jmp     l_f0_8                  #  20:     goto   8
    jmp     l_f0_9_while_cond       #  21:     goto   9_while_cond
l_f0_8:
    call    dummyINTfunc            #  23:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t8       <char> %ebp-45 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $84444, %eax            #   0:     add    t1 <- 84444, 76309
    movl    $76309, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t2 <- t1, 50884
    movl    $50884, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     add    t3 <- t2, 68286
    movl    $68286, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     sub    t4 <- t3, 13850
    movl    $13850, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     sub    t5 <- t4, 39609
    movl    $39609, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   5:     sub    t6 <- t5, 66941
    movl    $66941, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   6:     sub    t7 <- t6, 67383
    movl    $67383, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $46245, %eax            #   7:     if     46245 <= t7 goto 1_if_true
    movl    -44(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   8:     goto   2_if_false
l_f1_1_if_true:
    call    dummyCHARfunc           #  10:     call   t8 <- dummyCHARfunc
    movb    %al, -45(%ebp)         
    jmp     l_f1_0                  #  11:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_exit              
l_f1_7_while_cond:
    call    dummyINTfunc            #  16:     call   t9 <- dummyINTfunc
    movl    %eax, -52(%ebp)        
    movl    $95310, %eax            #  17:     sub    t10 <- 95310, t9
    movl    -52(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     if     t10 <= 63554 goto 8_while_body
    movl    $63554, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_8_while_body      
    jmp     l_f1_6                  #  19:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #  21:     goto   7_while_cond
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $40, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <char> %ebp-25 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 14 of <array 10 of <array 49 of <array 38 of <array 93 of <bool>>>>>>> %ebp+16 ]
    #    -26(%ebp)   1  [ $v5       <char> %ebp-26 ]

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
    movl    $90768, %eax            #   0:     mul    t1 <- 90768, 53464
    movl    $53464, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t2 <- t1, 13220
    movl    $13220, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t3 <- t2, 82825
    movl    $82825, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t3
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   4:     call   t4 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
l_f2_3_while_cond:
    jmp     l_f2_2                  #   6:     goto   2
    movl    $99, %eax               #   7:     assign v5 <- 99
    movb    %al, -26(%ebp)         
l_f2_8_while_cond:
    jmp     l_f2_8_while_cond       #   9:     goto   8_while_cond
    jmp     l_f2_3_while_cond       #  10:     goto   3_while_cond
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    movl    $29780, %eax            #   2:     if     29780 < 97313 goto 2_if_true
    movl    $97313, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_2_if_true       
    jmp     l_test_3_if_false       #   3:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_5                #   5:     goto   5
l_test_5:
    movl    $100, %eax              #   7:     if     100 # 99 goto 9_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_9_if_true       
    jmp     l_test_10_if_false      #   8:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_8                #  10:     goto   8
l_test_10_if_false:
l_test_8:
    movl    $6186, %eax             #  13:     assign v1 <- 6186
    movl    %eax, v1               
    jmp     l_test_exit            
    jmp     l_test_1                #  15:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $8392, %eax             #  20:     assign v1 <- 8392
    movl    %eax, v1               

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
