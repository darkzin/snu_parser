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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 5 of <array 5 of <array 6 of <array 8 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 5 of <array 7 of <array 5 of <array 7 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 5 of <array 5 of <array 4 of <array 10 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #    -33(%ebp)   1  [ $v4       <char> %ebp-33 ]
    #    -40(%ebp)   4  [ $v5       <int> %ebp-40 ]

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
    movl    $99, %eax               #   0:     assign v4 <- 99
    movb    %al, -33(%ebp)         
l_f0_2_while_cond:
    movl    $99, %eax               #   2:     if     99 < 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_3_while_body      
    jmp     l_f0_1                  #   3:     goto   1
l_f0_3_while_body:
l_f0_6_while_cond:
    movl    $80963, %eax            #   6:     if     80963 >= 64133 goto 7_while_body
    movl    $64133, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_7_while_body      
    jmp     l_f0_5                  #   7:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #   9:     goto   6_while_cond
l_f0_5:
    movl    $65894, %eax            #  11:     assign v5 <- 65894
    movl    %eax, -40(%ebp)        
    jmp     l_f0_2_while_cond       #  12:     goto   2_while_cond
l_f0_1:
    movl    $28772, %eax            #  14:     mul    t0 <- 28772, 28332
    movl    $28332, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     add    t1 <- t0, 79718
    movl    $79718, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     sub    t2 <- t1, 86304
    movl    $86304, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     add    t3 <- t2, 36388
    movl    $36388, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     add    t4 <- t3, 67206
    movl    $67206, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     return t4
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 10 of <array 2 of <array 7 of <array 8 of <char>>>>>>> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t0
    jmp     l_f1_exit              
    call    ReadInt                 #   2:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    dummyCHARfunc           #   3:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   4:     return t2
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 6 of <array 10 of <array 2 of <array 7 of <array 8 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 6 of <array 5 of <array 5 of <array 4 of <array 10 of <int>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 1 of <array 5 of <array 7 of <array 5 of <array 7 of <char>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <ptr(4) to <array 3 of <array 5 of <array 5 of <array 6 of <array 8 of <char>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 1 of <array 7 of <array 10 of <array 1 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 6 of <array 7 of <array 6 of <array 7 of <int>>>>>>> %ebp+16 ]
    #   -6788(%ebp)  6744  [ $v3       <array 6 of <array 10 of <array 2 of <array 7 of <array 8 of <char>>>>>> %ebp-6788 ]
    #   -10412(%ebp)  3624  [ $v4       <array 3 of <array 5 of <array 5 of <array 6 of <array 8 of <char>>>>>> %ebp-10412 ]
    #   -11664(%ebp)  1249  [ $v5       <array 1 of <array 5 of <array 7 of <array 5 of <array 7 of <char>>>>>> %ebp-11664 ]
    #   -35688(%ebp)  24024  [ $v6       <array 6 of <array 5 of <array 5 of <array 4 of <array 10 of <int>>>>>> %ebp-35688 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $35676, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8919, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-6788(%ebp)          # local array 'v3': 5 dimensions
    movl    $6,-6784(%ebp)          #   dimension 1: 6 elements
    movl    $10,-6780(%ebp)         #   dimension 2: 10 elements
    movl    $2,-6776(%ebp)          #   dimension 3: 2 elements
    movl    $7,-6772(%ebp)          #   dimension 4: 7 elements
    movl    $8,-6768(%ebp)          #   dimension 5: 8 elements
    movl    $5,-10412(%ebp)         # local array 'v4': 5 dimensions
    movl    $3,-10408(%ebp)         #   dimension 1: 3 elements
    movl    $5,-10404(%ebp)         #   dimension 2: 5 elements
    movl    $5,-10400(%ebp)         #   dimension 3: 5 elements
    movl    $6,-10396(%ebp)         #   dimension 4: 6 elements
    movl    $8,-10392(%ebp)         #   dimension 5: 8 elements
    movl    $5,-11664(%ebp)         # local array 'v5': 5 dimensions
    movl    $1,-11660(%ebp)         #   dimension 1: 1 elements
    movl    $5,-11656(%ebp)         #   dimension 2: 5 elements
    movl    $7,-11652(%ebp)         #   dimension 3: 7 elements
    movl    $5,-11648(%ebp)         #   dimension 4: 5 elements
    movl    $7,-11644(%ebp)         #   dimension 5: 7 elements
    movl    $5,-35688(%ebp)         # local array 'v6': 5 dimensions
    movl    $6,-35684(%ebp)         #   dimension 1: 6 elements
    movl    $5,-35680(%ebp)         #   dimension 2: 5 elements
    movl    $5,-35676(%ebp)         #   dimension 3: 5 elements
    movl    $4,-35672(%ebp)         #   dimension 4: 4 elements
    movl    $10,-35668(%ebp)        #   dimension 5: 10 elements

    # function body
    leal    -6788(%ebp), %eax       #   0:     &()    t0 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    f1                      #   2:     call   t1 <- f1
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movl    $22719, %eax            #   3:     sub    t2 <- 22719, 59617
    movl    $59617, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     add    t3 <- t2, 29549
    movl    $29549, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     return t3
    jmp     l_f2_exit              
    movl    $0, %eax                #   6:     param  3 <- 0
    pushl   %eax                   
    leal    -35688(%ebp), %eax      #   7:     &()    t4 <- v6
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   8:     param  2 <- t4
    pushl   %eax                   
    leal    -11664(%ebp), %eax      #   9:     &()    t5 <- v5
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  10:     param  1 <- t5
    pushl   %eax                   
    leal    -10412(%ebp), %eax      #  11:     &()    t6 <- v4
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  12:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  13:     call   t7 <- f0
    addl    $16, %esp              
    movl    %eax, -44(%ebp)        

l_f2_exit:
    # epilogue
    addl    $35676, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    jmp     l_test_exit            
    jmp     l_test_0                #   2:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_8_if_false       #   7:     goto   8_if_false
    jmp     l_test_8_if_false       #   8:     goto   8_if_false
    jmp     l_test_8_if_false       #   9:     goto   8_if_false
l_test_12_while_cond:
    movl    $90767, %eax            #  11:     if     90767 <= 40647 goto 13_while_body
    movl    $40647, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_13_while_body   
    jmp     l_test_11               #  12:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  14:     goto   12_while_cond
l_test_11:
    jmp     l_test_6                #  16:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
