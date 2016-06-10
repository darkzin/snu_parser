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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 73 of <array 66 of <array 92 of <array 49 of <array 19 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <char> %ebp+16 ]
    #    -20(%ebp)   4  [ $v5       <int> %ebp-20 ]

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
l_f0_1_while_cond:
    movl    $99, %eax               #   1:     if     99 < 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $88986, %eax            #   4:     assign v5 <- 88986
    movl    %eax, -20(%ebp)        
l_f0_6_while_cond:
    movl    $100, %eax              #   6:     if     100 >= 100 goto 7_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_7_while_body      
    jmp     l_f0_5                  #   7:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #   9:     goto   6_while_cond
l_f0_5:
    movl    $35626, %eax            #  11:     assign v5 <- 35626
    movl    %eax, -20(%ebp)        
    movl    $21452, %eax            #  12:     assign v5 <- 21452
    movl    %eax, -20(%ebp)        
    movl    $0, %eax                #  13:     return 0
    jmp     l_f0_exit              
    jmp     l_f0_14_if_false        #  14:     goto   14_if_false
    jmp     l_f0_12                 #  15:     goto   12
l_f0_14_if_false:
l_f0_12:
l_f0_16_while_cond:
    jmp     l_f0_16_while_cond      #  19:     goto   16_while_cond
    jmp     l_f0_20_if_false        #  20:     goto   20_if_false
    jmp     l_f0_18                 #  21:     goto   18
l_f0_20_if_false:
l_f0_18:
    jmp     l_f0_1_while_cond       #  24:     goto   1_while_cond
l_f0_0:
    movl    $98, %eax               #  26:     if     98 = 100 goto 22_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_22_if_true        
    jmp     l_f0_23_if_false        #  27:     goto   23_if_false
l_f0_22_if_true:
l_f0_26_while_cond:
    movl    $32636, %eax            #  30:     if     32636 > 46902 goto 27_while_body
    movl    $46902, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_27_while_body     
    jmp     l_f0_25                 #  31:     goto   25
l_f0_27_while_body:
    jmp     l_f0_26_while_cond      #  33:     goto   26_while_cond
l_f0_25:
    movl    $1, %eax                #  35:     assign v2 <- 1
    movb    %al, 8(%ebp)           
    jmp     l_f0_32_if_false        #  36:     goto   32_if_false
    jmp     l_f0_30                 #  37:     goto   30
l_f0_32_if_false:
l_f0_30:
    jmp     l_f0_21                 #  40:     goto   21
l_f0_23_if_false:
l_f0_21:
    call    dummyCHARfunc           #  43:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

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
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 91 of <array 34 of <array 62 of <array 36 of <array 100 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 17 of <array 86 of <array 9 of <array 18 of <array 66 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v5       <char> %ebp+20 ]

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
    movl    $41496, %eax            #   0:     mul    t2 <- 41496, 78202
    movl    $78202, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     sub    t3 <- t2, 15310
    movl    $15310, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   2:     add    t4 <- t3, 26387
    movl    $26387, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   3:     assign v2 <- t4
    movl    %eax, 8(%ebp)          
    movl    $51891, %eax            #   4:     sub    t5 <- 51891, 3793
    movl    $3793, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   5:     sub    t6 <- t5, 5684
    movl    $5684, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   6:     sub    t7 <- t6, 87745
    movl    $87745, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   7:     add    t8 <- t7, 26947
    movl    $26947, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   8:     sub    t9 <- t8, 62214
    movl    $62214, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   9:     return t9
    jmp     l_f1_exit              
    call    ReadInt                 #  10:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     sub    t11 <- t10, 89248
    movl    $89248, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     return t11
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 17 of <array 86 of <array 9 of <array 18 of <array 66 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 91 of <array 34 of <array 62 of <array 36 of <array 100 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 93 of <array 89 of <array 44 of <array 26 of <array 63 of <int>>>>>>> %ebp+8 ]
    #    -37(%ebp)   1  [ $v3       <bool> %ebp-37 ]
    #   -690580864(%ebp)  690580824  [ $v4       <array 91 of <array 34 of <array 62 of <array 36 of <array 100 of <bool>>>>>> %ebp-690580864 ]
    #   -706212592(%ebp)  15631728  [ $v5       <array 17 of <array 86 of <array 9 of <array 18 of <array 66 of <bool>>>>>> %ebp-706212592 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $706212580, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $176553145, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-690580864(%ebp)     # local array 'v4': 5 dimensions
    movl    $91,-690580860(%ebp)    #   dimension 1: 91 elements
    movl    $34,-690580856(%ebp)    #   dimension 2: 34 elements
    movl    $62,-690580852(%ebp)    #   dimension 3: 62 elements
    movl    $36,-690580848(%ebp)    #   dimension 4: 36 elements
    movl    $100,-690580844(%ebp)   #   dimension 5: 100 elements
    movl    $5,-706212592(%ebp)     # local array 'v5': 5 dimensions
    movl    $17,-706212588(%ebp)    #   dimension 1: 17 elements
    movl    $86,-706212584(%ebp)    #   dimension 2: 86 elements
    movl    $9,-706212580(%ebp)     #   dimension 3: 9 elements
    movl    $18,-706212576(%ebp)    #   dimension 4: 18 elements
    movl    $66,-706212572(%ebp)    #   dimension 5: 66 elements

    # function body
    jmp     l_f2_9                  #   0:     goto   9
l_f2_9:
    jmp     l_f2_1                  #   2:     goto   1
    jmp     l_f2_1                  #   3:     goto   1
l_f2_1:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   6:     goto   3
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   9:     assign v3 <- t2
    movb    %al, -37(%ebp)         
    movl    $99, %eax               #  10:     param  3 <- 99
    pushl   %eax                   
    leal    -706212592(%ebp), %eax  #  11:     &()    t3 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  2 <- t3
    pushl   %eax                   
    leal    -690580864(%ebp), %eax  #  13:     &()    t4 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     param  1 <- t4
    pushl   %eax                   
    movl    $59123, %eax            #  15:     div    t5 <- 59123, 9649
    movl    $9649, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     mul    t6 <- t5, 43221
    movl    $43221, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  17:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  18:     call   t7 <- f1
    addl    $16, %esp              
    movl    %eax, -36(%ebp)        
l_f2_13_while_cond:
    jmp     l_f2_12                 #  20:     goto   12
    jmp     l_f2_13_while_cond      #  21:     goto   13_while_cond
l_f2_12:

l_f2_exit:
    # epilogue
    addl    $706212580, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
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
l_test_1_while_cond:
    movl    $10174, %eax            #   1:     if     10174 >= 48855 goto 2_while_body
    movl    $48855, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_6_if_false       #   4:     goto   6_if_false
    jmp     l_test_4                #   5:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_7                #   8:     goto   7
l_test_7:
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $42180, %eax            #  12:     assign v0 <- 42180
    movl    %eax, v0               
    jmp     l_test_1_while_cond     #  13:     goto   1_while_cond
l_test_0:
    movl    $99, %eax               #  15:     assign v1 <- 99
    movb    %al, v1                
    jmp     l_test_exit            
    jmp     l_test_17_if_false      #  17:     goto   17_if_false
    jmp     l_test_exit            
    movl    $100, %eax              #  19:     assign v1 <- 100
    movb    %al, v1                
    jmp     l_test_15               #  20:     goto   15
l_test_17_if_false:
l_test_15:
    call    dummyCHARfunc           #  23:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  24:     if     t0 # 98 goto 21_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_21_if_true      
    jmp     l_test_22_if_false      #  25:     goto   22_if_false
l_test_21_if_true:
    jmp     l_test_20               #  27:     goto   20
l_test_22_if_false:
l_test_20:
    call    dummyBOOLfunc           #  30:     call   t1 <- dummyBOOLfunc
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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
