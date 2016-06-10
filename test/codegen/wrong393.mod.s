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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 6 of <array 2 of <array 3 of <array 4 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 7 of <array 4 of <array 1 of <array 4 of <bool>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t3
    jmp     l_f0_exit              
    movl    $42384, %eax            #   2:     mul    t4 <- 42384, 33678
    movl    $33678, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     mul    t5 <- t4, 38199
    movl    $38199, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     sub    t6 <- t5, 42416
    movl    $42416, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     add    t7 <- t6, 89689
    movl    $89689, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     add    t8 <- t7, 43835
    movl    $43835, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     assign v2 <- t8
    movl    %eax, 16(%ebp)         
    movl    $97, %eax               #   8:     return 97
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 3 of <array 7 of <array 4 of <array 1 of <array 4 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t5       <ptr(4) to <array 3 of <array 6 of <array 2 of <array 3 of <array 4 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <char> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #   -484(%ebp)  456  [ $v1       <array 3 of <array 6 of <array 2 of <array 3 of <array 4 of <char>>>>>> %ebp-484 ]
    #   -844(%ebp)  360  [ $v2       <array 3 of <array 7 of <array 4 of <array 1 of <array 4 of <bool>>>>>> %ebp-844 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $832, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $208, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-484(%ebp)           # local array 'v1': 5 dimensions
    movl    $3,-480(%ebp)           #   dimension 1: 3 elements
    movl    $6,-476(%ebp)           #   dimension 2: 6 elements
    movl    $2,-472(%ebp)           #   dimension 3: 2 elements
    movl    $3,-468(%ebp)           #   dimension 4: 3 elements
    movl    $4,-464(%ebp)           #   dimension 5: 4 elements
    movl    $5,-844(%ebp)           # local array 'v2': 5 dimensions
    movl    $3,-840(%ebp)           #   dimension 1: 3 elements
    movl    $7,-836(%ebp)           #   dimension 2: 7 elements
    movl    $4,-832(%ebp)           #   dimension 3: 4 elements
    movl    $1,-828(%ebp)           #   dimension 4: 1 elements
    movl    $4,-824(%ebp)           #   dimension 5: 4 elements

    # function body
    movl    $98, %eax               #   0:     return 98
    jmp     l_f1_exit              
    movl    $97, %eax               #   1:     if     97 <= 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
    jmp     l_f1_1                  #   4:     goto   1
l_f1_3_if_false:
l_f1_1:
    leal    -844(%ebp), %eax        #   7:     &()    t3 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     param  3 <- t3
    pushl   %eax                   
    movl    $7465, %eax             #   9:     param  2 <- 7465
    pushl   %eax                   
    call    dummyBOOLfunc           #  10:     call   t4 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  11:     param  1 <- t4
    pushl   %eax                   
    leal    -484(%ebp), %eax        #  12:     &()    t5 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  14:     call   t6 <- f0
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  15:     return t6
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $832, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]

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
    movl    $401, %eax              #   0:     if     401 # 81382 goto 1_if_true
    movl    $81382, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyBOOLfunc           #   6:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyINTfunc            #   7:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]

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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $98, %eax               #   2:     if     98 <= 97 goto 3_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_3_if_true       
    jmp     l_test_4_if_false       #   3:     goto   4_if_false
l_test_3_if_true:
    movl    $92608, %eax            #   5:     assign v0 <- 92608
    movl    %eax, v0               
    jmp     l_test_2                #   6:     goto   2
l_test_4_if_false:
l_test_2:
l_test_8_while_cond:
    jmp     l_test_12               #  10:     goto   12
    movl    $1, %eax                #  11:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_13               #  12:     goto   13
l_test_12:
    movl    $0, %eax                #  14:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_13:
    movzbl  -18(%ebp), %eax         #  16:     if     t2 # 0 goto 9_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_9_while_body    
    jmp     l_test_7                #  17:     goto   7
l_test_9_while_body:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_8_while_cond     #  21:     goto   8_while_cond
l_test_7:
    movl    $100, %eax              #  23:     assign v1 <- 100
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
