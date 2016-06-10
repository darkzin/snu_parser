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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]

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
    jmp     l_f0_1_if_true          #   0:     goto   1_if_true
    jmp     l_f0_1_if_true          #   1:     goto   1_if_true
l_f0_1_if_true:
    movl    $93238, %eax            #   3:     if     93238 = 58543 goto 7
    movl    $58543, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_7                 
    jmp     l_f0_8                  #   4:     goto   8
l_f0_7:
    movl    $1, %eax                #   6:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_9                  #   7:     goto   9
l_f0_8:
    movl    $0, %eax                #   9:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f0_9:
    movzbl  -13(%ebp), %eax         #  11:     return t5
    jmp     l_f0_exit              
    jmp     l_f0_0                  #  12:     goto   0
l_f0_0:
    call    dummyBOOLfunc           #  14:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    call    ReadInt                 #  15:     call   t7 <- ReadInt
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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <char> %ebp-18 ]

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
l_f1_1_while_cond:
    movl    $98, %eax               #   1:     if     98 <= 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    call    dummyINTfunc            #   4:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f1_6_while_cond:
    movl    $97, %eax               #   6:     if     97 < 98 goto 7_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_7_while_body      
    jmp     l_f1_5                  #   7:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #   9:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_11_if_false        #  11:     goto   11_if_false
    jmp     l_f1_9                  #  12:     goto   9
l_f1_11_if_false:
l_f1_9:
    jmp     l_f1_1_while_cond       #  15:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #  17:     call   t6 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  18:     return t6
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  19:     call   t7 <- dummyCHARfunc
    movb    %al, -18(%ebp)         

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 22 of <array 32 of <array 22 of <array 39 of <array 72 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 28 of <array 73 of <array 80 of <array 11 of <array 15 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 63 of <array 55 of <array 36 of <array 58 of <array 72 of <char>>>>>>> %ebp+20 ]
    #    -52(%ebp)   4  [ $v6       <int> %ebp-52 ]

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
    movl    $49697, %eax            #   0:     div    t5 <- 49697, 3080
    movl    $3080, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   1:     div    t6 <- t5, 4239
    movl    $4239, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   2:     sub    t7 <- t6, 93252
    movl    $93252, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   3:     sub    t8 <- t7, 84297
    movl    $84297, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   4:     return t8
    jmp     l_f2_exit              
    call    dummyINTfunc            #   5:     call   t9 <- dummyINTfunc
    movl    %eax, -48(%ebp)        
    movl    $28871, %eax            #   6:     sub    t10 <- 28871, 8030
    movl    $8030, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     sub    t11 <- t10, 97750
    movl    $97750, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     sub    t12 <- t11, 58153
    movl    $58153, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     sub    t13 <- t12, 29017
    movl    $29017, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     assign v6 <- t13
    movl    %eax, -52(%ebp)        

l_f2_exit:
    # epilogue
    addl    $40, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <char> %ebp-26 ]

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
    movl    $1, %eax                #   0:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_3                #   1:     goto   3
    movl    $1, %eax                #   2:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_4                #   3:     goto   4
l_test_3:
    movl    $0, %eax                #   5:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_4:
    movzbl  -13(%ebp), %eax         #   7:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_9_if_false       #   8:     goto   9_if_false
    jmp     l_test_9_if_false       #   9:     goto   9_if_false
    jmp     l_test_9_if_false       #  10:     goto   9_if_false
    call    ReadInt                 #  11:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_exit            
l_test_15_while_cond:
    jmp     l_test_15_while_cond    #  14:     goto   15_while_cond
    movl    $98, %eax               #  15:     assign v1 <- 98
    movb    %al, v1                
    call    dummyINTfunc            #  16:     call   t2 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    call    dummyCHARfunc           #  17:     call   t3 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    jmp     l_test_7                #  18:     goto   7
l_test_9_if_false:
l_test_7:
    jmp     l_test_exit            
    movl    $43095, %eax            #  22:     assign v2 <- 43095
    movl    %eax, v2               
    call    dummyCHARfunc           #  23:     call   t4 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  24:     assign v1 <- t4
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
