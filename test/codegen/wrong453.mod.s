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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 2 of <array 6 of <array 9 of <array 9 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 1 of <array 8 of <array 4 of <array 4 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 2 of <array 6 of <array 4 of <array 9 of <int>>>>>>> %ebp+16 ]
    #    -40(%ebp)   4  [ $v3       <int> %ebp-40 ]

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
    call    dummyINTfunc            #   0:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t2 <- t1, 30469
    movl    $30469, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t2
    jmp     l_f0_exit              
    movl    $67336, %eax            #   3:     mul    t3 <- 67336, 20962
    movl    $20962, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     div    t4 <- t3, 76258
    movl    $76258, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     div    t5 <- t4, 26950
    movl    $26950, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    $14537, %eax            #   6:     add    t6 <- 14537, t5
    movl    -32(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     return t6
    jmp     l_f0_exit              
    movl    $29078, %eax            #   8:     assign v3 <- 29078
    movl    %eax, -40(%ebp)        

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 8 of <array 1 of <array 3 of <array 3 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 10 of <array 2 of <array 1 of <array 7 of <char>>>>>>> %ebp+12 ]
    #    -30(%ebp)   1  [ $v2       <bool> %ebp-30 ]

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
    movl    $1, %eax                #   0:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_6                  #   1:     goto   6
    movl    $0, %eax                #   2:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_6:
    movl    $1, %eax                #   4:     if     1 = t1 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   5:     goto   2_if_false
l_f1_1_if_true:
l_f1_9_while_cond:
    jmp     l_f1_8                  #   8:     goto   8
    jmp     l_f1_9_while_cond       #   9:     goto   9_while_cond
l_f1_8:
    jmp     l_f1_0                  #  11:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_13_if_false        #  14:     goto   13_if_false
    movl    $17214, %eax            #  15:     if     17214 <= 98394 goto 15
    movl    $98394, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_15                
    jmp     l_f1_16                 #  16:     goto   16
l_f1_15:
    movl    $1, %eax                #  18:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_17                 #  19:     goto   17
l_f1_16:
    movl    $0, %eax                #  21:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f1_17:
    movzbl  -14(%ebp), %eax         #  23:     return t2
    jmp     l_f1_exit              
    movl    $1, %eax                #  24:     assign v2 <- 1
    movb    %al, -30(%ebp)         
l_f1_21_while_cond:
    movl    $100, %eax              #  26:     if     100 > 98 goto 22_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_22_while_body     
    jmp     l_f1_20                 #  27:     goto   20
l_f1_22_while_body:
    movl    $39569, %eax            #  29:     if     39569 <= 97908 goto 25_if_true
    movl    $97908, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_25_if_true        
    jmp     l_f1_26_if_false        #  30:     goto   26_if_false
l_f1_25_if_true:
    jmp     l_f1_24                 #  32:     goto   24
l_f1_26_if_false:
l_f1_24:
    jmp     l_f1_28                 #  35:     goto   28
l_f1_28:
    jmp     l_f1_21_while_cond      #  37:     goto   21_while_cond
l_f1_20:
    jmp     l_f1_11                 #  39:     goto   11
l_f1_13_if_false:
l_f1_11:
    call    ReadInt                 #  42:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  43:     add    t4 <- t3, 86956
    movl    $86956, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  44:     add    t5 <- t4, 70492
    movl    $70492, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  45:     if     t5 < 84137 goto 32
    movl    $84137, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_32                
    jmp     l_f1_33                 #  46:     goto   33
l_f1_32:
    movl    $1, %eax                #  48:     assign t6 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_34                 #  49:     goto   34
l_f1_33:
    movl    $0, %eax                #  51:     assign t6 <- 0
    movb    %al, -29(%ebp)         
l_f1_34:
    movzbl  -29(%ebp), %eax         #  53:     return t6
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 8 of <array 2 of <array 6 of <array 4 of <array 9 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <ptr(4) to <array 8 of <array 1 of <array 8 of <array 4 of <array 4 of <int>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <ptr(4) to <array 5 of <array 2 of <array 6 of <array 9 of <array 9 of <char>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #   -4928(%ebp)  4884  [ $v2       <array 5 of <array 2 of <array 6 of <array 9 of <array 9 of <char>>>>>> %ebp-4928 ]
    #   -9048(%ebp)  4120  [ $v3       <array 8 of <array 1 of <array 8 of <array 4 of <array 4 of <int>>>>>> %ebp-9048 ]
    #   -22896(%ebp)  13848  [ $v4       <array 8 of <array 2 of <array 6 of <array 4 of <array 9 of <int>>>>>> %ebp-22896 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $22884, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5721, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-4928(%ebp)          # local array 'v2': 5 dimensions
    movl    $5,-4924(%ebp)          #   dimension 1: 5 elements
    movl    $2,-4920(%ebp)          #   dimension 2: 2 elements
    movl    $6,-4916(%ebp)          #   dimension 3: 6 elements
    movl    $9,-4912(%ebp)          #   dimension 4: 9 elements
    movl    $9,-4908(%ebp)          #   dimension 5: 9 elements
    movl    $5,-9048(%ebp)          # local array 'v3': 5 dimensions
    movl    $8,-9044(%ebp)          #   dimension 1: 8 elements
    movl    $1,-9040(%ebp)          #   dimension 2: 1 elements
    movl    $8,-9036(%ebp)          #   dimension 3: 8 elements
    movl    $4,-9032(%ebp)          #   dimension 4: 4 elements
    movl    $4,-9028(%ebp)          #   dimension 5: 4 elements
    movl    $5,-22896(%ebp)         # local array 'v4': 5 dimensions
    movl    $8,-22892(%ebp)         #   dimension 1: 8 elements
    movl    $2,-22888(%ebp)         #   dimension 2: 2 elements
    movl    $6,-22884(%ebp)         #   dimension 3: 6 elements
    movl    $4,-22880(%ebp)         #   dimension 4: 4 elements
    movl    $9,-22876(%ebp)         #   dimension 5: 9 elements

    # function body
    movl    $7763, %eax             #   0:     add    t1 <- 7763, 78541
    movl    $78541, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t2 <- t1, 92952
    movl    $92952, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t3 <- t2, 14006
    movl    $14006, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t3
    jmp     l_f2_exit              
    leal    -22896(%ebp), %eax      #   4:     &()    t4 <- v4
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     param  2 <- t4
    pushl   %eax                   
    leal    -9048(%ebp), %eax       #   6:     &()    t5 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     param  1 <- t5
    pushl   %eax                   
    leal    -4928(%ebp), %eax       #   8:     &()    t6 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   9:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  10:     call   t7 <- f0
    addl    $12, %esp              
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  11:     assign v1 <- t7
    movl    %eax, 12(%ebp)         
    call    ReadInt                 #  12:     call   t8 <- ReadInt
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  13:     return t8
    jmp     l_f2_exit              
    jmp     l_f2_2                  #  14:     goto   2
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $22884, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
l_test_2_while_cond:
    movl    $99, %eax               #   2:     if     99 >= 99 goto 3_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    movl    $59613, %eax            #   5:     if     59613 = 94770 goto 6_if_true
    movl    $94770, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_6_if_true       
    jmp     l_test_7_if_false       #   6:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   8:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_9                #  11:     goto   9
l_test_9:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_2_while_cond     #  15:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            
l_test_16_while_cond:
    call    dummyBOOLfunc           #  19:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_16_while_cond    #  21:     goto   16_while_cond
    jmp     l_test_exit            

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
