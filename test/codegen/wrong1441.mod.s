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
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 77 of <array 64 of <array 1 of <array 41 of <array 9 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 32 of <array 18 of <array 39 of <array 71 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]

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
    movl    $97, %eax               #   0:     if     97 > 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v2 <- t2
    movb    %al, 12(%ebp)          
    call    dummyCHARfunc           #   9:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  10:     return t3
    jmp     l_f0_exit              
    movl    $4793, %eax             #  11:     sub    t4 <- 4793, 66057
    movl    $66057, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     add    t5 <- t4, 58113
    movl    $58113, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     sub    t6 <- t5, 56342
    movl    $56342, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     add    t7 <- t6, 26483
    movl    $26483, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  15:     add    t8 <- t7, 2080
    movl    $2080, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  16:     assign v4 <- t8
    movl    %eax, 20(%ebp)         

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
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 44 of <array 83 of <array 85 of <array 38 of <array 77 of <int>>>>>>> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f1_exit              
    call    dummyProcedure          #   1:     call   dummyProcedure
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 4 of <array 32 of <array 18 of <array 39 of <array 71 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 77 of <array 64 of <array 1 of <array 41 of <array 9 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t5       <ptr(4) to <array 4 of <array 32 of <array 18 of <array 39 of <array 71 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t7       <ptr(4) to <array 77 of <array 64 of <array 1 of <array 41 of <array 9 of <int>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t8       <char> %ebp-37 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 45 of <array 64 of <array 92 of <array 89 of <array 57 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 31 of <array 57 of <array 88 of <array 1 of <array 10 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 95 of <array 19 of <array 40 of <array 40 of <array 37 of <int>>>>>>> %ebp+16 ]
    #   -7273792(%ebp)  7273752  [ $v4       <array 77 of <array 64 of <array 1 of <array 41 of <array 9 of <int>>>>>> %ebp-7273792 ]
    #   -13653592(%ebp)  6379800  [ $v5       <array 4 of <array 32 of <array 18 of <array 39 of <array 71 of <char>>>>>> %ebp-13653592 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $13653580, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3413395, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-7273792(%ebp)       # local array 'v4': 5 dimensions
    movl    $77,-7273788(%ebp)      #   dimension 1: 77 elements
    movl    $64,-7273784(%ebp)      #   dimension 2: 64 elements
    movl    $1,-7273780(%ebp)       #   dimension 3: 1 elements
    movl    $41,-7273776(%ebp)      #   dimension 4: 41 elements
    movl    $9,-7273772(%ebp)       #   dimension 5: 9 elements
    movl    $5,-13653592(%ebp)      # local array 'v5': 5 dimensions
    movl    $4,-13653588(%ebp)      #   dimension 1: 4 elements
    movl    $32,-13653584(%ebp)     #   dimension 2: 32 elements
    movl    $18,-13653580(%ebp)     #   dimension 3: 18 elements
    movl    $39,-13653576(%ebp)     #   dimension 4: 39 elements
    movl    $71,-13653572(%ebp)     #   dimension 5: 71 elements

    # function body
    movl    $22766, %eax            #   0:     param  3 <- 22766
    pushl   %eax                   
    leal    -13653592(%ebp), %eax   #   1:     &()    t2 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  2 <- t2
    pushl   %eax                   
    movl    $0, %eax                #   3:     param  1 <- 0
    pushl   %eax                   
    leal    -7273792(%ebp), %eax    #   4:     &()    t3 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #   6:     call   t4 <- f0
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   7:     return t4
    jmp     l_f2_exit              
    movl    $63797, %eax            #   8:     if     63797 >= 62311 goto 2_if_true
    movl    $62311, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   9:     goto   3_if_false
l_f2_2_if_true:
    movl    $100, %eax              #  11:     return 100
    jmp     l_f2_exit              
    movl    $93537, %eax            #  12:     param  3 <- 93537
    pushl   %eax                   
    leal    -13653592(%ebp), %eax   #  13:     &()    t5 <- v5
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     param  2 <- t5
    pushl   %eax                   
    movl    $97, %eax               #  15:     if     97 >= 98 goto 7
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_7                 
    jmp     l_f2_8                  #  16:     goto   8
l_f2_7:
    movl    $1, %eax                #  18:     assign t6 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f2_9                  #  19:     goto   9
l_f2_8:
    movl    $0, %eax                #  21:     assign t6 <- 0
    movb    %al, -29(%ebp)         
l_f2_9:
    movzbl  -29(%ebp), %eax         #  23:     param  1 <- t6
    pushl   %eax                   
    leal    -7273792(%ebp), %eax    #  24:     &()    t7 <- v4
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  25:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  26:     call   t8 <- f0
    addl    $16, %esp              
    movb    %al, -37(%ebp)         
    call    WriteLn                 #  27:     call   WriteLn
    movl    $99, %eax               #  28:     return 99
    jmp     l_f2_exit              
    movl    $98, %eax               #  29:     return 98
    jmp     l_f2_exit              
    jmp     l_f2_1                  #  30:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_15_while_cond:
    jmp     l_f2_16_while_body      #  34:     goto   16_while_body
    jmp     l_f2_14                 #  35:     goto   14
l_f2_16_while_body:
    jmp     l_f2_19                 #  37:     goto   19
l_f2_19:
    jmp     l_f2_15_while_cond      #  39:     goto   15_while_cond
l_f2_14:

l_f2_exit:
    # epilogue
    addl    $13653580, %esp         # remove locals
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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    movl    $98, %eax               #   1:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    movl    $97, %eax               #   3:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_0                #   5:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $97, %eax               #   8:     if     97 = 99 goto 7_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_7_if_true       
    jmp     l_test_8_if_false       #   9:     goto   8_if_false
l_test_7_if_true:
l_test_11_while_cond:
    jmp     l_test_11_while_cond    #  12:     goto   11_while_cond
    jmp     l_test_6                #  13:     goto   6
l_test_8_if_false:
l_test_6:
l_test_14_while_cond:
    movl    $16606, %eax            #  17:     sub    t0 <- 16606, 77790
    movl    $77790, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  18:     if     t0 >= 6224 goto 15_while_body
    movl    $6224, %ebx            
    cmpl    %ebx, %eax             
    jge     l_test_15_while_body   
    jmp     l_test_13               #  19:     goto   13
l_test_15_while_body:
    movl    $98, %eax               #  21:     if     98 <= 100 goto 18_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_18_if_true      
    jmp     l_test_19_if_false      #  22:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_17               #  24:     goto   17
l_test_19_if_false:
l_test_17:
    call    dummyProcedure          #  27:     call   dummyProcedure
    jmp     l_test_14_while_cond    #  28:     goto   14_while_cond
l_test_13:
    movl    $91317, %eax            #  30:     add    t1 <- 91317, 68420
    movl    $68420, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  31:     assign v1 <- t1
    movl    %eax, v1               
l_test_24_while_cond:
    jmp     l_test_23               #  33:     goto   23
    movl    $98, %eax               #  34:     if     98 <= 98 goto 27_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_27_if_true      
    jmp     l_test_28_if_false      #  35:     goto   28_if_false
l_test_27_if_true:
    movl    $100, %eax              #  37:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_26               #  39:     goto   26
l_test_28_if_false:
l_test_26:
    jmp     l_test_24_while_cond    #  42:     goto   24_while_cond
l_test_23:
l_test_33_while_cond:
    jmp     l_test_38               #  45:     goto   38
    jmp     l_test_38               #  46:     goto   38
    jmp     l_test_34_while_body    #  47:     goto   34_while_body
l_test_38:
    jmp     l_test_34_while_body    #  49:     goto   34_while_body
    jmp     l_test_34_while_body    #  50:     goto   34_while_body
l_test_34_while_body:
    jmp     l_test_33_while_cond    #  52:     goto   33_while_cond

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
