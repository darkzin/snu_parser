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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 7 of <array 5 of <array 4 of <array 8 of <bool>>>>>>> %ebp+8 ]
    #    -33(%ebp)   1  [ $v1       <char> %ebp-33 ]
    #    -40(%ebp)   4  [ $v2       <int> %ebp-40 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    ReadInt                 #   0:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t6 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   2:     assign v1 <- t6
    movb    %al, -33(%ebp)         
    movl    $99, %eax               #   3:     if     99 > 99 goto 3_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   4:     goto   4_if_false
l_f0_3_if_true:
    movl    $6734, %eax             #   6:     mul    t7 <- 6734, 33963
    movl    $33963, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     mul    t8 <- t7, 12869
    movl    $12869, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     mul    t9 <- t8, 84096
    movl    $84096, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   9:     assign v2 <- t9
    movl    %eax, -40(%ebp)        
    jmp     l_f0_2                  #  10:     goto   2
l_f0_4_if_false:
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 9 of <array 7 of <array 5 of <array 4 of <array 8 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <char> %ebp-22 ]
    #    -28(%ebp)   4  [ $t8       <ptr(4) to <array 9 of <array 7 of <array 5 of <array 4 of <array 8 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <bool> %ebp-29 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #   -10136(%ebp)  10104  [ $v1       <array 9 of <array 7 of <array 5 of <array 4 of <array 8 of <bool>>>>>> %ebp-10136 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $10124, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2531, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-10136(%ebp)         # local array 'v1': 5 dimensions
    movl    $9,-10132(%ebp)         #   dimension 1: 9 elements
    movl    $7,-10128(%ebp)         #   dimension 2: 7 elements
    movl    $5,-10124(%ebp)         #   dimension 3: 5 elements
    movl    $4,-10120(%ebp)         #   dimension 4: 4 elements
    movl    $8,-10116(%ebp)         #   dimension 5: 8 elements

    # function body
l_f1_1_while_cond:
    leal    -10136(%ebp), %eax      #   1:     &()    t5 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #   3:     call   t6 <- f0
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    movl    $100, %eax              #   4:     return 100
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   5:     call   t7 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_7_while_cond:
    leal    -10136(%ebp), %eax      #   8:     &()    t8 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  10:     call   t9 <- f0
    addl    $4, %esp               
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  11:     if     t9 = 1 goto 8_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_8_while_body      
    jmp     l_f1_6                  #  12:     goto   6
l_f1_8_while_body:
    jmp     l_f1_11_if_false        #  14:     goto   11_if_false
    jmp     l_f1_9                  #  15:     goto   9
l_f1_11_if_false:
l_f1_9:
    jmp     l_f1_14_if_false        #  18:     goto   14_if_false
    jmp     l_f1_12                 #  19:     goto   12
l_f1_14_if_false:
l_f1_12:
    jmp     l_f1_7_while_cond       #  22:     goto   7_while_cond
l_f1_6:
    call    dummyCHARfunc           #  24:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  25:     return t10
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $10124, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t8       <char> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -17(%ebp)   1  [ $v1       <bool> %ebp-17 ]

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
    call    dummyBOOLfunc           #   0:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t5 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1                 
l_f2_1:
    movl    $1, %eax                #   3:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
    movl    $0, %eax                #   5:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #   7:     return t6
    jmp     l_f2_exit              
    jmp     l_f2_7                  #   8:     goto   7
l_f2_7:
    movl    $1, %eax                #  10:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_9                  #  11:     goto   9
    movl    $0, %eax                #  12:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f2_9:
    movzbl  -15(%ebp), %eax         #  14:     assign v1 <- t7
    movb    %al, -17(%ebp)         
    movl    $0, %eax                #  15:     param  0 <- 0
    pushl   %eax                   
    call    f1                      #  16:     call   t8 <- f1
    addl    $4, %esp               
    movb    %al, -16(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_4_while_cond:
    jmp     l_test_3                #   1:     goto   3
    jmp     l_test_4_while_cond     #   2:     goto   4_while_cond
l_test_3:
    movl    $9053, %eax             #   4:     param  0 <- 9053
    pushl   %eax                   
    call    f2                      #   5:     call   t0 <- f2
    addl    $4, %esp               
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_0                #   7:     goto   0
l_test_0:
    jmp     l_test_exit            
    movl    $71697, %eax            #  10:     mul    t1 <- 71697, 7975
    movl    $7975, %ebx            
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     mul    t2 <- t1, 9370
    movl    $9370, %ebx            
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     div    t3 <- t2, 27054
    movl    $27054, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  14:     call   t4 <- f2
    addl    $4, %esp               
    movb    %al, -29(%ebp)         

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
