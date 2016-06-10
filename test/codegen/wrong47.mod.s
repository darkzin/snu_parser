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
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 7 of <array 7 of <array 6 of <array 2 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 9 of <array 4 of <array 1 of <array 10 of <char>>>>>>> %ebp+16 ]
    #    -15(%ebp)   1  [ $v3       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $v4       <char> %ebp-16 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
l_f0_4_while_cond:
    jmp     l_f0_3                  #   2:     goto   3
    movl    $0, %eax                #   3:     assign v3 <- 0
    movb    %al, -15(%ebp)         
    jmp     l_f0_9_if_false         #   4:     goto   9_if_false
    jmp     l_f0_7                  #   5:     goto   7
l_f0_9_if_false:
l_f0_7:
    call    dummyBOOLfunc           #   8:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   9:     assign v4 <- 99
    movb    %al, -16(%ebp)         
l_f0_13_while_cond:
    movl    $4111, %eax             #  11:     if     4111 <= 37942 goto 14_while_body
    movl    $37942, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_14_while_body     
    jmp     l_f0_12                 #  12:     goto   12
l_f0_14_while_body:
    jmp     l_f0_13_while_cond      #  14:     goto   13_while_cond
l_f0_12:
    jmp     l_f0_4_while_cond       #  16:     goto   4_while_cond
l_f0_3:
    jmp     l_f0_0                  #  18:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  21:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #  22:     assign v4 <- 98
    movb    %al, -16(%ebp)         

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 2 of <array 9 of <array 4 of <array 1 of <array 10 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 3 of <array 7 of <array 7 of <array 6 of <array 2 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t5       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #   -1816(%ebp)  1788  [ $v3       <array 3 of <array 7 of <array 7 of <array 6 of <array 2 of <bool>>>>>> %ebp-1816 ]
    #   -2560(%ebp)  744  [ $v4       <array 2 of <array 9 of <array 4 of <array 1 of <array 10 of <char>>>>>> %ebp-2560 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2548, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $637, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1816(%ebp)          # local array 'v3': 5 dimensions
    movl    $3,-1812(%ebp)          #   dimension 1: 3 elements
    movl    $7,-1808(%ebp)          #   dimension 2: 7 elements
    movl    $7,-1804(%ebp)          #   dimension 3: 7 elements
    movl    $6,-1800(%ebp)          #   dimension 4: 6 elements
    movl    $2,-1796(%ebp)          #   dimension 5: 2 elements
    movl    $5,-2560(%ebp)          # local array 'v4': 5 dimensions
    movl    $2,-2556(%ebp)          #   dimension 1: 2 elements
    movl    $9,-2552(%ebp)          #   dimension 2: 9 elements
    movl    $4,-2548(%ebp)          #   dimension 3: 4 elements
    movl    $1,-2544(%ebp)          #   dimension 4: 1 elements
    movl    $10,-2540(%ebp)         #   dimension 5: 10 elements

    # function body
    leal    -2560(%ebp), %eax       #   0:     &()    t2 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  2 <- t2
    pushl   %eax                   
    movl    $18655, %eax            #   2:     param  1 <- 18655
    pushl   %eax                   
    leal    -1816(%ebp), %eax       #   3:     &()    t3 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #   5:     call   t4 <- f0
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   6:     if     t4 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_1                 
    jmp     l_f1_2                  #   7:     goto   2
l_f1_1:
    movl    $1, %eax                #   9:     assign t5 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f1_3                  #  10:     goto   3
l_f1_2:
    movl    $0, %eax                #  12:     assign t5 <- 0
    movb    %al, -22(%ebp)         
l_f1_3:
    movzbl  -22(%ebp), %eax         #  14:     return t5
    jmp     l_f1_exit              
    movl    $1342, %eax             #  15:     add    t6 <- 1342, 41441
    movl    $41441, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     assign v2 <- t6
    movl    %eax, 16(%ebp)         
    call    dummyProcedure          #  17:     call   dummyProcedure

l_f1_exit:
    # epilogue
    addl    $2548, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 2 of <array 9 of <array 4 of <array 1 of <array 10 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 3 of <array 7 of <array 7 of <array 6 of <array 2 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 3 of <array 5 of <array 9 of <array 9 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #   -1816(%ebp)  1788  [ $v2       <array 3 of <array 7 of <array 7 of <array 6 of <array 2 of <bool>>>>>> %ebp-1816 ]
    #   -2560(%ebp)  744  [ $v3       <array 2 of <array 9 of <array 4 of <array 1 of <array 10 of <char>>>>>> %ebp-2560 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2548, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $637, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1816(%ebp)          # local array 'v2': 5 dimensions
    movl    $3,-1812(%ebp)          #   dimension 1: 3 elements
    movl    $7,-1808(%ebp)          #   dimension 2: 7 elements
    movl    $7,-1804(%ebp)          #   dimension 3: 7 elements
    movl    $6,-1800(%ebp)          #   dimension 4: 6 elements
    movl    $2,-1796(%ebp)          #   dimension 5: 2 elements
    movl    $5,-2560(%ebp)          # local array 'v3': 5 dimensions
    movl    $2,-2556(%ebp)          #   dimension 1: 2 elements
    movl    $9,-2552(%ebp)          #   dimension 2: 9 elements
    movl    $4,-2548(%ebp)          #   dimension 3: 4 elements
    movl    $1,-2544(%ebp)          #   dimension 4: 1 elements
    movl    $10,-2540(%ebp)         #   dimension 5: 10 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t2
    jmp     l_f2_exit              
l_f2_5_while_cond:
    jmp     l_f2_5_while_cond       #   3:     goto   5_while_cond
    movl    $1, %eax                #   4:     if     1 = 1 goto 8_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_8_if_true         
    jmp     l_f2_9_if_false         #   5:     goto   9_if_false
l_f2_8_if_true:
    movl    $100, %eax              #   7:     return 100
    jmp     l_f2_exit              
    jmp     l_f2_7                  #   8:     goto   7
l_f2_9_if_false:
l_f2_7:
    jmp     l_f2_1                  #  11:     goto   1
l_f2_1:
l_f2_13_while_cond:
    leal    -2560(%ebp), %eax       #  14:     &()    t3 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     param  2 <- t3
    pushl   %eax                   
    movl    $61264, %eax            #  16:     param  1 <- 61264
    pushl   %eax                   
    leal    -1816(%ebp), %eax       #  17:     &()    t4 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  19:     call   t5 <- f0
    addl    $12, %esp              
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  20:     if     t5 = 1 goto 16
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_16                
    jmp     l_f2_12                 #  21:     goto   12
l_f2_16:
    jmp     l_f2_12                 #  23:     goto   12
    jmp     l_f2_13_while_cond      #  24:     goto   13_while_cond
l_f2_12:

l_f2_exit:
    # epilogue
    addl    $2548, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
    jmp     l_test_4_if_false       #   2:     goto   4_if_false
    call    dummyINTfunc            #   3:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_2                #   4:     goto   2
l_test_4_if_false:
l_test_2:

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
