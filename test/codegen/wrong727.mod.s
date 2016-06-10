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
    #    -25(%ebp)   1  [ $t4       <char> %ebp-25 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 5 of <array 2 of <array 9 of <array 8 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]
    #    -26(%ebp)   1  [ $v5       <bool> %ebp-26 ]

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
    movl    $55008, %eax            #   0:     add    t1 <- 55008, 66211
    movl    $66211, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t2 <- t1, 91466
    movl    $91466, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t3 <- t2, 41465
    movl    $41465, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v1 <- t3
    movl    %eax, 8(%ebp)          
    call    dummyCHARfunc           #   4:     call   t4 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #   5:     return t4
    jmp     l_f0_exit              
    movl    $0, %eax                #   6:     assign v5 <- 0
    movb    %al, -26(%ebp)         

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 3 of <array 5 of <array 2 of <array 9 of <array 8 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 3 of <array 5 of <array 2 of <array 9 of <array 8 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <char> %ebp-29 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #    -30(%ebp)   1  [ $v4       <bool> %ebp-30 ]
    #   -2216(%ebp)  2184  [ $v5       <array 3 of <array 5 of <array 2 of <array 9 of <array 8 of <char>>>>>> %ebp-2216 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2204, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $551, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2216(%ebp)          # local array 'v5': 5 dimensions
    movl    $3,-2212(%ebp)          #   dimension 1: 3 elements
    movl    $5,-2208(%ebp)          #   dimension 2: 5 elements
    movl    $2,-2204(%ebp)          #   dimension 3: 2 elements
    movl    $9,-2200(%ebp)          #   dimension 4: 9 elements
    movl    $8,-2196(%ebp)          #   dimension 5: 8 elements

    # function body
    movl    $16580, %eax            #   0:     sub    t1 <- 16580, 31160
    movl    $31160, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     if     t1 >= 75847 goto 1_if_true
    movl    $75847, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
    movl    $1, %eax                #   4:     assign v4 <- 1
    movb    %al, -30(%ebp)         
l_f1_6_while_cond:
    movl    $97, %eax               #   6:     if     97 <= 97 goto 7_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_7_while_body      
    jmp     l_f1_5                  #   7:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #   9:     goto   6_while_cond
l_f1_5:
l_f1_10_while_cond:
    movl    $1, %eax                #  12:     if     1 # 1 goto 11_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_11_while_body     
    jmp     l_f1_9                  #  13:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  15:     goto   10_while_cond
l_f1_9:
    jmp     l_f1_0                  #  17:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $63805, %eax            #  20:     param  3 <- 63805
    pushl   %eax                   
    movl    $100, %eax              #  21:     param  2 <- 100
    pushl   %eax                   
    leal    -2216(%ebp), %eax       #  22:     &()    t2 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     param  1 <- t2
    pushl   %eax                   
    movl    $82071, %eax            #  24:     param  0 <- 82071
    pushl   %eax                   
    call    f0                      #  25:     call   t3 <- f0
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
    movl    $10128, %eax            #  26:     param  3 <- 10128
    pushl   %eax                   
    movl    $99, %eax               #  27:     param  2 <- 99
    pushl   %eax                   
    leal    -2216(%ebp), %eax       #  28:     &()    t4 <- v5
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  29:     param  1 <- t4
    pushl   %eax                   
    movl    $11341, %eax            #  30:     param  0 <- 11341
    pushl   %eax                   
    call    f0                      #  31:     call   t5 <- f0
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  32:     return t5
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $2204, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 3 of <array 4 of <array 9 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 7 of <array 3 of <array 9 of <array 7 of <array 3 of <bool>>>>>>> %ebp+20 ]
    #    -15(%ebp)   1  [ $v5       <char> %ebp-15 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     return t1
    jmp     l_f2_exit              
    jmp     l_f2_4_if_false         #   3:     goto   4_if_false
    movl    $97, %eax               #   4:     assign v5 <- 97
    movb    %al, -15(%ebp)         
    jmp     l_f2_8_if_false         #   5:     goto   8_if_false
    jmp     l_f2_6                  #   6:     goto   6
l_f2_8_if_false:
l_f2_6:
    call    dummyCHARfunc           #   9:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f2_2                  #  10:     goto   2
l_f2_4_if_false:
l_f2_2:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]

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
l_test_1_while_cond:
    movl    $100, %eax              #   1:     if     100 <= 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    jmp     l_test_6_if_true        #   7:     goto   6_if_true
    jmp     l_test_7_if_false       #   8:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_exit            
    movl    $64591, %eax            #  11:     if     64591 > 93231 goto 13_if_true
    movl    $93231, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_13_if_true      
    jmp     l_test_14_if_false      #  12:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  14:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_16               #  17:     goto   16
l_test_16:
    movl    $82996, %eax            #  19:     assign v0 <- 82996
    movl    %eax, v0               
l_test_21_while_cond:
    movl    $1, %eax                #  21:     if     1 = 1 goto 22_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_22_while_body   
    jmp     l_test_20               #  22:     goto   20
l_test_22_while_body:
    jmp     l_test_21_while_cond    #  24:     goto   21_while_cond
l_test_20:
l_test_25_while_cond:
    jmp     l_test_25_while_cond    #  27:     goto   25_while_cond
    jmp     l_test_5                #  28:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_exit            
    call    dummyINTfunc            #  32:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $100, %eax              #  33:     if     100 = 99 goto 30_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_30_if_true      
    jmp     l_test_31_if_false      #  34:     goto   31_if_false
l_test_30_if_true:
    movl    $4033, %eax             #  36:     if     4033 # 30508 goto 34_if_true
    movl    $30508, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_34_if_true      
    jmp     l_test_35_if_false      #  37:     goto   35_if_false
l_test_34_if_true:
    jmp     l_test_33               #  39:     goto   33
l_test_35_if_false:
l_test_33:
    jmp     l_test_exit            
l_test_39_while_cond:
    movl    $100, %eax              #  44:     if     100 = 98 goto 40_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_40_while_body   
    jmp     l_test_38               #  45:     goto   38
l_test_40_while_body:
    jmp     l_test_39_while_cond    #  47:     goto   39_while_cond
l_test_38:
    movl    $100, %eax              #  49:     assign v1 <- 100
    movb    %al, v1                
    jmp     l_test_29               #  50:     goto   29
l_test_31_if_false:
l_test_29:

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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
